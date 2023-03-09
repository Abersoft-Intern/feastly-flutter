import 'package:flutter/material.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:pinput/pinput.dart';

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
             
            Pinput(
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: PinTheme(
                      height: 60.0,
                      width: 60.0,
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: BoxDecoration(
                        
                        color: Colors.white,
                        border: Border(
                      bottom: BorderSide(width: 1.5, color: Color.fromARGB(255, 74, 72, 72)),
                      ),
                      ),
                    ),
            onCompleted: (pin) => print(pin),
             ),
             gapH48,
             
              SizedBox(
                width: double.infinity,
                child: Text(
                  'I did not get a verification code.'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Regular!,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Send again.'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Bold,
                  textAlign: TextAlign.center,
                ),
              ),
              gapH24,
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
