import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';

class ErrorComponent extends StatelessWidget {
  const ErrorComponent({
    super.key,
    required this.onRetry,
    this.message,
    this.isLoading = false,
  });

  final VoidCallback onRetry;
  final String? message;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Icon(
            Icons.sync_problem_rounded,
            color: colorTheme.mediumGrey,
            size: 100.0,
          ),
        ),
        gapH4,
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            message ?? 'An error occured while fetching the data'.hardcoded,
            style: textTheme.body16Bold!.copyWith(
              color: colorTheme.mediumGrey,
            ),
          ),
        ),
        gapH20,
        SizedBox(
          height: 50,
          width: 150,
          child: Button(
            isLoading: isLoading,
            disabled: isLoading,
            text: 'TRY AGAIN',
            onTap: onRetry,
          ),
        ),
      ],
    );
  }
}
