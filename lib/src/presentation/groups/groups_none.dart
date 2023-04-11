import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupsRecipesNone extends StatefulWidget {
  const GroupsRecipesNone({super.key});
  @override
  State<GroupsRecipesNone> createState() => _GroupsRecipesNoneState();
}

class _GroupsRecipesNoneState extends State<GroupsRecipesNone> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      children: [
        SizedBox(
          height: 350.0.h,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: Image.asset(
                  'assets/images/Jelly Bear-1.png',
                  height: 238.0.r,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 0,
                child: Image.asset(
                  'assets/images/Jelly Bear.png',
                  height: 201.0.r,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
          child: SizedBox(
            width: 315,
            child: Text(
              'Looks like you dont have any groups yet. Press New Group and invite some friends to swipe together.'
                  .hardcoded,
              style: textTheme.body16Regular,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
