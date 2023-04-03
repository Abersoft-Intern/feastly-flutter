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
        Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border(
                ),
              ),
              child: Image.asset(
                  'assets/images/pancakes.png',
                  height: 80.0.r,
                  width: 66.0.r,
                ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Raspberry pancakes'.hardcoded,
                        style: theme.extension<CustomTextTheme>()!.body16Bold!,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Rating(
                  rating: 3,
                  emptyRatingIcon: Icon(
                    FeastlyIcon.icon_star_unfilled,
                    color: colorTheme.unselectedNav,
                  ),
                ),
                    SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p36.h),
                    child: Icon(
                      FeastlyIcon.button_arrow_right,
                      color: theme.primaryColor,
                      size: 25.0.h,
                    ),
                    ),
                      ],
                    ), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Cook time: 20 min'.hardcoded,
                        style: theme.extension<CustomTextTheme>()!.body16Regular!,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
        gapH60,
        
        gapH64,
      ],
    );
  }
}
