//import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipesNone extends StatelessWidget {
  const DiscoverRecipesNone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    //final colorTheme = theme.extension<CustomColor>()!;
    return Column(
      children: [
        Text(
          'No more swipes!'.hardcoded,
          style: textTheme.h3,
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 20,
                child: Image.asset(
                  'assets/images/pizza.png',
                  height: 271.0.r,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 50,
                child: Image.asset(
                  'assets/images/hotdog.png',
                  height: 147.0.r,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 230,
          child: Text(
            'You have reached the limit of swipes for today, come back tomorrow for more swipes!'
                .hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
