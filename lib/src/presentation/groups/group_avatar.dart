import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/domain/group/group_preview.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class GroupAvatar extends StatelessWidget {
  const GroupAvatar({
    super.key,
    required this.group,
    required this.onTap,
  });

  final GroupPreview group;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return SizedBox(
      width: 80.0.h,
      child: InkResponse(
        radius: 40.0,
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  if (group.active)
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture(
                        const AssetBytesLoader(
                            'assets/images/avatar_border.svg.vec'),
                        height: 55.0.h,
                        colorFilter: ColorFilter.mode(
                          theme.primaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 42.0.h,
                      height: 42.0.h,
                      child: CachedNetworkImage(
                        imageUrl: group.creatorPhoto != null
                            ? "${Env.baseUrl}${group.creatorPhoto}"
                            : "https://ui-avatars.com/api/?format=png&name=${group.creatorName}",
                        imageBuilder: (context, imageProvider) {
                          return CircleAvatar(
                            foregroundImage: imageProvider,
                          );
                        },
                        placeholder: (context, url) {
                          if (group.blurhash != null) {
                            return CircleAvatar(
                              foregroundImage: BlurHashImage(group.blurhash!),
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 7,
                    right: 5,
                    child: Container(
                      width: 24.0.h,
                      height: 24.0.h,
                      decoration: BoxDecoration(
                        color: group.active
                            ? theme.primaryColor
                            : colorTheme.lightGrey,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Center(
                        child: Text(
                          '+${group.membersCount}',
                          style: textTheme.bold12!.copyWith(
                            color: group.active ? colorTheme.white : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              group.name,
              style: textTheme.bold12!
                  .copyWith(color: group.active ? theme.primaryColor : null),
            )
          ],
        ),
      ),
    );
  }
}
