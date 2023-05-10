import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedRecipeItemLoading extends StatelessWidget {
  const SavedRecipeItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.p28.h,
        vertical: Sizes.p12.h,
      ),
      child: Row(
        children: [
          Container(
            height: 80.0.h,
            width: 66.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
          ),
          gapW24,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.0.h,
                height: Sizes.p16.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              gapH8,
              const Rating(
                rating: 5,
              ),
              gapH4,
              Container(
                width: 120.0.h,
                height: Sizes.p16.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            FeastlyIcon.button_arrow_right,
            size: Sizes.p24.h,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
