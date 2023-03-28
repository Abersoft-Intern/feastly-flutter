import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
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
    final colorTheme = theme.extension<CustomColor>()!;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Groups'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h3!,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Edit Group'.hardcoded,
                  style: theme
                      .extension<CustomTextTheme>()!
                      .body16Regular!
                      .copyWith(color: theme.primaryColor),
                ),
              ),
            ],
          ),
        ),
        gapH16,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
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
                  Text(
                    'New Group'.hardcoded,
                    style:
                        textTheme.bold12!.copyWith(color: theme.primaryColor),
                  )
                ],
              ),
            ),
          ),
        ),
        gapH24,
        Expanded(
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
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
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
        gapH32,
      ],
    );
  }
}
