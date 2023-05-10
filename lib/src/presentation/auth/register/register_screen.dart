import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.all(Sizes.p28.h),
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
                style: textTheme.h2!,
              ),
              gapH8,
              Text(
                'It has never been easier deciding what to eat!'.hardcoded,
                style: textTheme.body16Regular!,
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
                style: textTheme.body16Regular!,
                textAlign: TextAlign.center,
              ),
              gapH32,
              Button(
                text: 'Register'.hardcoded,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
