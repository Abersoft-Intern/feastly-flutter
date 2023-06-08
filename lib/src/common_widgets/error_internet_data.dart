import 'package:flutter/material.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';

class ErrorInternetData extends StatelessWidget {
  final void Function() onRetry;

  const ErrorInternetData({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;

    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Icon(Icons.report_problem_outlined,
                color: theme.primaryColor, size: 100.0),
          ),
          gapH4,
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'An error occured while fetching the data'.hardcoded,
              style: textTheme.body16Bold!.copyWith(color: theme.primaryColor),
            ),
          ),
          gapH20,
          Container(
            height: 50,
            width: 150,
            child: Button(
              text: 'TRY AGAIN',
              variant: ButtonVariant.danger,
              onTap: onRetry,
            ),
          ),
        ],
      ),
    );
  }
}
