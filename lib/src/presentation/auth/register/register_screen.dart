import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'register_buttons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
    onTap: ()=> FocusScope.of(context).unfocus(),
    child: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: Icon(
                  FeastlyIcon.arrow_back_green,
                  size: Sizes.backIconSize,
                  color: theme.primaryColor,
                ),
                onTap: () {
                  context.pop();
                },
              ),
              gapH24,
              Text(
                'Create account'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH8,
              Text(
                'It has never been easier deciding what to eat!'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              gapH64,
              Input(
                keyboardType: TextInputType.emailAddress,
                hintText: 'email@email.com'.hardcoded,
                icon: Icon(
                  FeastlyIcon.icon_email,
                  color: theme.primaryColor,
                ),
              ),
              gapH24,
              Input(
                keyboardType: TextInputType.text,
                hintText: 'Password'.hardcoded,
                isPassword: true,
                icon: Icon(
                  FeastlyIcon.icon_padlock,
                  color: theme.primaryColor,
                ),
              ),
              gapH24,
              Input(
                keyboardType: TextInputType.text,
                hintText: 'Repeat Password'.hardcoded,
                isPassword: true,
                icon: Icon(
                  FeastlyIcon.icon_padlock,
                  color: theme.primaryColor,
                ),
              ),
              gapH64,
              Text(
                'By creating an account you agree to our Terms of Use and Privacy Policy.'
                    .hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
                textAlign: TextAlign.center,
              ),
              gapH32,
              Button(
                text: 'Register'.hardcoded,
                onTap: () {},
              ),
              gapH40,
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Or Sign In using Social Media'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Regular!,
                  textAlign: TextAlign.center,
                ),
              ),
              gapH36,
              const RegisterButtons()
            ],
          ),
        ),
      ),
    ),
    );
  }
}
