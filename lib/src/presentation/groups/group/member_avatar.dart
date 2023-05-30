import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_graphics/vector_graphics.dart';

class MemberAvatar extends StatelessWidget {
  const MemberAvatar({
    super.key,
    this.isActive = false,
    this.isDeleteable = false,
    required this.name,
    required this.id,
    this.profilePicture,
    this.blurhash,
  });

  final bool isActive;
  final bool isDeleteable;
  final String name;
  final String? profilePicture;
  final String? blurhash;
  final int id;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return Row(
      children: [
        SizedBox(
          width: 55.0.h,
          height: 55.0.h,
          child: Stack(
            children: [
              if (isActive)
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture(
                    const AssetBytesLoader(
                      'assets/images/avatar_border.svg.vec',
                    ),
                    height: 55.0.h,
                    colorFilter: ColorFilter.mode(
                      theme.primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              Align(
                alignment: Alignment.center,
                child: CachedNetworkImage(
                  width: 42.0.h,
                  height: 42.0.h,
                  imageUrl: profilePicture != null
                      ? "${Env.baseUrl}$profilePicture"
                      : "https://ui-avatars.com/api/?name=$name",
                  imageBuilder: (context, imageProvider) {
                    return CircleAvatar(
                      foregroundImage: imageProvider,
                    );
                  },
                  placeholder: (context, url) {
                    if (blurhash != null) {
                      return CircleAvatar(
                        foregroundImage: BlurHashImage(blurhash!),
                      );
                    }
                    return Container();
                  },
                ),
              )
            ],
          ),
        ),
        gapW28,
        Text(
          name,
          style: textTheme.body16Bold,
        ),
        const Spacer(),
        if (isDeleteable)
          InkWell(
            onTap: () {
              showCustomBottomSheet(
                context,
                title: 'Remove member'.hardcoded,
                subtitle:
                    'Are you sure you want to remove this\nmember?'.hardcoded,
              );
            },
            borderRadius: BorderRadius.circular(25.0),
            child: Ink(
              width: 40.0.h,
              height: 40.0.h,
              decoration: BoxDecoration(
                color: colorTheme.red,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Icon(
                  FeastlyIcon.vector_3,
                  size: 18.0.h,
                  color: colorTheme.white,
                ),
              ),
            ),
          )
      ],
    );
  }
}
