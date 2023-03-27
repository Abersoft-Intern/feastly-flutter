import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';

class OtpTexts extends StatelessWidget {
  const OtpTexts({
    super.key,
    required this.isWrong,
  });

  final bool isWrong;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: !isWrong,
          child: Text(
            'Verification code'.hardcoded,
            style: textTheme.h2,
          ),
        ),
        Visibility(
          visible: isWrong,
          child: Text(
            'Something went wrong! '.hardcoded,
            style: textTheme.h2,
          ),
        ),
        gapH12,
        Visibility(
          visible: !isWrong,
          child: Text(
            'Enter the code we sent to you, if you do not find it check your spam folder too.'
                .hardcoded,
            style: textTheme.body16Regular,
          ),
        ),
        Visibility(
          visible: isWrong,
          child: Text(
            'Incorrrect code, try again or let us send you another one.'
                .hardcoded,
            style: textTheme.body16Regular!.copyWith(
              color: theme.extension<CustomColor>()!.red!,
            ),
          ),
        ),
      ],
    );
  }
}
