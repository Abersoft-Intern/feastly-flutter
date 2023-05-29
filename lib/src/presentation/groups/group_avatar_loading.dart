import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupAvatarLoading extends StatelessWidget {
  const GroupAvatarLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: true,
      child: Row(
        children: [
          _buildCircle(context),
          _buildCircle(context),
          _buildCircle(context)
        ],
      ),
    );
  }

  Widget _buildCircle(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return SizedBox(
      width: 80.0.h,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 42.0.h,
                height: 42.0.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Text('', style: textTheme.bold12!)
        ],
      ),
    );
  }
}
