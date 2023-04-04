import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/common_widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryNone extends StatelessWidget {
  const CategoryNone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      children: [
        Divider(
                color: colorTheme.lightGrey,
                height: 0,
                thickness: 1,
                indent: 34,
                endIndent: 34,
                ),
        gapH12,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Breakfast'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h3!,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add new'.hardcoded,
                      style: theme
                          .extension<CustomTextTheme>()!
                          .body16Regular!
                          .copyWith(color: theme.primaryColor),
                    ),
                    gapW4,
                    Icon(
                      FeastlyIcon.uil_plus,
                      color: theme.primaryColor,
                      size: 16.0.h,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        gapH12,
        InkWell(
          onTap: () {},
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: Sizes.p28.h, vertical: Sizes.p8.h),
            child: Row(
              children: [
                Ink(
                  height: 80.0.h,
                  width: 66.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: const DecorationImage(
                    image: AssetImage('assets/images/pancakes.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: Sizes.p24.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Raspberry pancakes',
                      style: textTheme.body16Bold,
                    ),
                gapH8,
                Rating(
                  rating: 3,
                  emptyRatingIcon: Icon(
                    FeastlyIcon.icon_star_unfilled,
                    color: colorTheme.unselectedNav,
                  ),
                ),
                gapH8,
                Text(
                  'Cook time: 30',
                  style: textTheme.body16Regular,
                ),
              ],
            ),
            const Spacer(),
            Icon(
              FeastlyIcon.button_arrow_right,
              color: theme.primaryColor,
              size: 25.0.h,
            ),
          ],
        ),
      ),
    ),         
    gapH28,
        Divider(
                color: colorTheme.lightGrey,
                height: 0,
                thickness: 1,
                indent: 34,
                endIndent: 34,
                ),
        
      ],
    );
  }
}
