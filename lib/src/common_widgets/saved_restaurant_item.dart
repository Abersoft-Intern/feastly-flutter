import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedRestaurantItem extends StatelessWidget {
  const SavedRestaurantItem({
    super.key,
    required this.name,
    required this.rating,
    this.onTap,
    this.rightIcon,
  });

  final String name;
  final int rating;
  final IconData? rightIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.p28.h, vertical: Sizes.p8.h),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: 'https://i.ytimg.com/vi/0sn-3Mhz-Q4/mqdefault.jpg',
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: 80.0.h,
                  width: 66.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                );
              },
            ),
            SizedBox(
              width: Sizes.p24.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: textTheme.body16Bold,
                ),
                gapH12,
                Rating(
                  rating: rating,
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
              ],
            ),
            const Spacer(),
            Icon(
              rightIcon ?? FeastlyIcon.button_arrow_right,
              size: Sizes.p24.h,
              color: theme.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
