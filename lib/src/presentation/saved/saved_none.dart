import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedNone extends StatelessWidget {
  const SavedNone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/Cake.png',
                  height: 194.0.r,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  'assets/images/Donut.png',
                  height: 189.0.r,
                ),
              ),
            ],
          ),
        ),
        gapH44,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
          child: Text(
            'Looks like you have not saved anything yet. Go back to Discover and like something!'
                .hardcoded,
            style: theme.extension<CustomTextTheme>()!.body16Regular!,
            textAlign: TextAlign.center,
          ),
        ),
        gapH64,
      ],
    );
  }
}
