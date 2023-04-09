import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupsAvatar extends StatelessWidget {
  const GroupsAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () {},
      child: Column(
        children: [
          Ink(
            width: 42.0.h,
            height: 42.0.h,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Icon(
                FeastlyIcon.uil_plus,
                size: Sizes.p28.h,
                color: colorTheme.white,
              ),
            ),
          ),
          gapH4,
          Text(
            'New Group'.hardcoded,
            style: textTheme.bold12!.copyWith(color: theme.primaryColor),
          )
        ],
      ),
    );
  }
}
