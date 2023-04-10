import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GroupsAvatar extends StatelessWidget {
  const GroupsAvatar({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return SizedBox(
      width: 80.0.h,
      child: InkResponse(
        radius: 40.0,
        onTap: () {},
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  if (isActive)
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/avatar_border.svg',
                        height: 55.0.h,
                      ),
                    ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 42.0.h,
                      height: 42.0.h,
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://img.taste.com.au/hMaiduT5/taste/2016/11/raspberry-and-coconut-pancakes-78984-1.jpeg',
                        imageBuilder: (context, imageProvider) {
                          return CircleAvatar(
                            foregroundImage: imageProvider,
                          );
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
                        color: isActive
                            ? theme.primaryColor
                            : colorTheme.lightGrey,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Center(
                        child: Text(
                          '+2',
                          style: textTheme.bold12!.copyWith(
                            color: isActive ? colorTheme.white : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Family'.hardcoded,
              style: textTheme.bold12!
                  .copyWith(color: isActive ? theme.primaryColor : null),
            )
          ],
        ),
      ),
    );
  }
}
