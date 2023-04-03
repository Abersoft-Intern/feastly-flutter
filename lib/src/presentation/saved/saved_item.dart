import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({
    super.key,
    required this.name,
    required this.rating,
    required this.cookTime,
  });

  final String name;
  final int rating;
  final int cookTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
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
                borderRadius: BorderRadius.circular(10.0),
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
                  name,
                  style: textTheme.body16Bold,
                ),
                gapH8,
                Rating(
                  rating: rating,
                  emptyRatingIcon: Icon(
                    FeastlyIcon.icon_star_unfilled,
                    color: colorTheme.unselectedNav,
                  ),
                ),
                gapH8,
                Text(
                  'Cook time: $cookTime',
                  style: textTheme.body16Regular,
                ),
              ],
            ),
            const Spacer(),
            Icon(
              FeastlyIcon.button_arrow_right,
              size: Sizes.p24.h,
              color: theme.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
