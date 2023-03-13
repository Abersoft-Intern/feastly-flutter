import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.title, required this.imgPath});

  final String title;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            fit: BoxFit.contain,
            imgPath,
          ),
        ),
        gapH24,
        SizedBox(
          height: 100.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Text(
              title,
              style: theme.extension<CustomTextTheme>()!.h3!,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
