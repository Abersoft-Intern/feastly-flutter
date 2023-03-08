import 'package:flutter/material.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'login_sosmed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                'Hello'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH12,
              Text(
                'Sign into your account.'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              gapH48,
              Input(
                keyboardType: TextInputType.emailAddress,
                hintText: 'email@email.com'.hardcoded,
                icon: Icon(
                  FeastlyIcon.icon_email,
                  color: theme.primaryColor,
                ),
              ),
              gapH20,
              Input(
                keyboardType: TextInputType.text,
                hintText: 'Password'.hardcoded,
                isPassword: true,
                icon: Icon(
                  FeastlyIcon.icon_padlock,
                  color: theme.primaryColor,
                ),
              ),
              gapH20,

              Padding(
              padding:const EdgeInsets.fromLTRB(20, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {},
               child: Text(
                'Forgot password?'
                    .hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
                textAlign: TextAlign.right,
                selectionColor: Color.fromARGB(89, 209, 202, 1),
              ),
              ),
                ],
              ),
            ),
              gapH24,
              Button(
                text: 'Sign in'.hardcoded,
                onTap: () {},
                variant:ButtonVariant.outlined,
              ),
              gapH24,
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Or Sign in using Social Media'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Regular!,
                  textAlign: TextAlign.center,
                ),
              ),
              gapH16,
              const LoginSosmed()
            ],
          ),
        ),
      ),
    );
  }
}

