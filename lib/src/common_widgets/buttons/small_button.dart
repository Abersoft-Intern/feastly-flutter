import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
    this.text, {
    super.key,
    required this.icon,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
      height: 40.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: theme.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: Sizes.p20.h,
            color: colorTheme.white,
          ),
          gapW8,
          Text(
            text,
            style: textTheme.body16Bold!.copyWith(color: colorTheme.white),
          ),
        ],
      ),
    );
  }
}
