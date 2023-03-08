import 'package:flutter/material.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpVerified extends StatelessWidget {
  const OtpVerified({super.key});

  @override
  Widget build(BuildContext context) {
   final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FeastlyIcon.arrow_back_green,
                size: 26.0,
                color: theme.primaryColor,
              ),
              gapH20,
              Text(
                'Verified!'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH12,
              Text(
                'Congratulations you are now verified!'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              gapH48,
              
              gapH48,
             
              
              gapH64,
              Button(
                text: 'Continue'.hardcoded,
                onTap: () {},
              ),
              gapH24,
              
            ],
          ),
        ),
      ),
    );
  }
}
