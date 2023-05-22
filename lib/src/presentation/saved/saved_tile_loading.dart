import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedTileLoading extends StatelessWidget {
  const SavedTileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          gapW28,
          _buildTile(),
          gapW28,
          _buildTile(),
        ],
      ),
    );
  }

  Widget _buildTile() {
    return Container(
      width: 134.0.h,
      height: 73.0.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
