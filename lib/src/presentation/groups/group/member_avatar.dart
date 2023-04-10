import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_graphics/vector_graphics.dart';

class MemberAvatar extends StatelessWidget {
  const MemberAvatar({
    super.key,
    this.isActive = false,
    this.isDeleteable = false,
  });

  final bool isActive;
  final bool isDeleteable;

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
                  imageUrl:
                      'https://img.taste.com.au/hMaiduT5/taste/2016/11/raspberry-and-coconut-pancakes-78984-1.jpeg',
                  imageBuilder: (context, imageProvider) {
                    return CircleAvatar(
                      foregroundImage: imageProvider,
                    );
                  },
                ),
              )
            ],
          ),
        ),
        gapW28,
        Text(
          'Agnes Person',
          style: textTheme.body16Bold,
        ),
        const Spacer(),
        if (isDeleteable)
          InkWell(
            onTap: () {},
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
