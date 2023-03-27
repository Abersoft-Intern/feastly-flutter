import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/profile_buttons.dart';
import 'package:feastly/src/presentation/profile/profile_tile_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH24,
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Johan hellberg'.hardcoded,
                    style: textTheme.h3,
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  right: Sizes.p28.h,
                  top: 0,
                  bottom: 0,
                  child: InkWell(
                    child: Icon(
                      FeastlyIcon.icon_edit,
                      color: theme.primaryColor,
                    ),
                  ),
                )
              ],
            ),
            gapH36,
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 80.0.h,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: colorTheme.unselectedNav,
                    borderRadius: BorderRadius.circular(50.0)),
                child: Center(
                  child: Icon(
                    FeastlyIcon.icon_user,
                    size: 50.0.h,
                  ),
                ),
              ),
            ),
            gapH40,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location'.hardcoded,
                    style: textTheme.h3,
                  ),
                  gapH8,
                  Text(
                    'You can pick a different location to see restaurants all around the world.'
                        .hardcoded,
                    style: textTheme.body16Regular,
                  ),
                  gapH20,
                  InkWell(
                    onTap: () => {},
                    borderRadius: BorderRadius.circular(50.0),
                    child: Ink(
                      height: 50.0.h,
                      padding: EdgeInsets.symmetric(horizontal: Sizes.p24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                            color: colorTheme.lightGrey!, width: 2.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FeastlyIcon.icon_distance,
                            color: theme.primaryColor,
                            size: 24.0.h,
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Current Location',
                            style: textTheme.body16Regular,
                          ),
                          const Spacer(),
                          Icon(
                            FeastlyIcon.button_arrow_right,
                            color: theme.primaryColor,
                            size: 24.0.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gapH32,
            Container(
              height: 1.0,
              color: colorTheme.lightGrey,
            ),
            gapH28,
            const ProfileTileList(),
            gapH28,
            const ProfileButtons(),
            gapH20
          ],
        ),
      ),
    );
  }
}
