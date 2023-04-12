import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_shadow.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRestaurantsCard extends StatelessWidget {
  const DiscoverRestaurantsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    final shadowTheme = theme.extension<CustomShadow>()!;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.p16.h,
      ),
      padding:
          EdgeInsets.symmetric(horizontal: Sizes.p20.h, vertical: Sizes.p28.h),
      decoration: BoxDecoration(
        boxShadow: [shadowTheme.cardShadow!],
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: CachedNetworkImageProvider(
              'https://img.taste.com.au/hMaiduT5/taste/2016/11/raspberry-and-coconut-pancakes-78984-1.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [shadowTheme.cardShadow!],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.p20.h,
                vertical: Sizes.p16.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'testsdf',
                    style: textTheme.h2,
                  ),
                  gapH4,
                  Row(
                    children: [
                      Rating(
                        iconSize: 30.0.h,
                        rating: 3,
                        emptyRatingIcon: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            color: colorTheme.mediumGrey,
                          ),
                          child: Center(
                            child: Icon(
                              FeastlyIcon.icon_star_filled,
                              size: 10,
                              color: colorTheme.white,
                            ),
                          ),
                        ),
                        fullRatingIcon: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            color: colorTheme.red,
                          ),
                          child: Center(
                            child: Icon(
                              FeastlyIcon.icon_star_filled,
                              size: 10,
                              color: colorTheme.white,
                            ),
                          ),
                        ),
                      ),
                      gapH16,
                      Text(
                        '777 Reviews',
                        style: textTheme.body14Bold,
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
