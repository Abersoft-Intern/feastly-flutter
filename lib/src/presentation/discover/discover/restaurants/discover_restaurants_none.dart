//import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRestaurantsNone extends StatelessWidget {
  const DiscoverRestaurantsNone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      children: [
        Text(
          'No more restaurants!'.hardcoded,
          style: textTheme.h3,
        ),
        gapH20,
        Expanded(
          child: Image.asset(
            'assets/images/utencils.png',
            height: 271.0.r,
            fit: BoxFit.contain,
          ),
        ),
        gapH36,
        SizedBox(
          width: 290.0.h,
          child: Text(
            'No more restaurants in your area. Go to Profile and change location to view more, or come back tomorrow!'
                .hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
