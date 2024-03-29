import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rating,
    this.fullRatingIcon,
    this.emptyRatingIcon,
    this.iconSize,
  });

  final int rating;
  final double? iconSize;
  final Widget? fullRatingIcon;
  final Widget? emptyRatingIcon;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: rating.toDouble(),
      direction: Axis.horizontal,
      itemCount: 5,
      ignoreGestures: true,
      maxRating: 5,
      itemSize: iconSize ?? Sizes.p24.h,
      ratingWidget: RatingWidget(
        full: fullRatingIcon ??
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFFFFAA2A), Color(0xFFFBFF2A)],
                  tileMode: TileMode.clamp,
                ).createShader(bounds);
              },
              child: const Icon(
                FeastlyIcon.icon_star_filled,
                color: Colors.yellow,
              ),
            ),
        half: fullRatingIcon ??
            const Icon(FeastlyIcon.icon_star_unfilled, color: Colors.white),
        empty: emptyRatingIcon ??
            const Icon(FeastlyIcon.icon_star_unfilled, color: Colors.white),
      ),
      itemPadding: EdgeInsets.only(right: Sizes.p8.h),
      onRatingUpdate: (rating) {},
    );
  }
}
