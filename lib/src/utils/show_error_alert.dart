import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';

void showErrorAlert(BuildContext context, String text) {
  final theme = Theme.of(context);

  final textTheme = theme.extension<CustomTextTheme>()!;

  showPrompt(
    context,
    child: Column(
      children: [
        gapH20,
        Center(
          child: Text(
            text,
            style: textTheme.body16Regular!,
            textAlign: TextAlign.center,
          ),
        ),
        gapH40
      ],
    ),
  );
}
