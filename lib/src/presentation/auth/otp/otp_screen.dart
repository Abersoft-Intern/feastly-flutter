import 'package:flutter/material.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                'Verification code'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH12,
              Text(
                'Enter the code we sent to you, if you do not find it check your spam folder too.'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              gapH48,
              OTPTextField(
                length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 80,
                 style: theme.extension<CustomTextTheme>()!.h2!,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                  print("Completed: " + pin);
                },
                    ),
              gapH48,
             
              Text(
                'I did not get a verification code. Send again.' .hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
                textAlign: TextAlign.center,
              ),
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
