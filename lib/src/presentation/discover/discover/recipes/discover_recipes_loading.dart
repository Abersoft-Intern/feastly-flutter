import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipesLoading extends StatelessWidget {
  const DiscoverRecipesLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: ShimmerLoading(
        isLoading: true,
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            gapH28,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.p36.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(),
                  gapW8,
                  _buildActionButton(),
                  gapW8,
                  _buildActionButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    return Container(
      height: 80.0.r,
      width: 80.0.r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
