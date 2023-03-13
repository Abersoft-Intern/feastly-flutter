import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/auth/login/login_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text;
  String get password => _passwordController.text;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          const LoginHeader(),
          Padding(
            padding: const EdgeInsets.all(Sizes.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: topPadding,
                ),
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  child: Icon(
                    FeastlyIcon.arrow_back_green,
                    size: 26.0,
                    color: theme.primaryColor,
                  ),
                ),
                const SizedBox(height: 210.0),
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
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'email@email.com'.hardcoded,
                  icon: Icon(
                    FeastlyIcon.icon_email,
                    color: theme.primaryColor,
                  ),
                ),
                gapH20,
                Input(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  hintText: 'Password'.hardcoded,
                  isPassword: true,
                  icon: Icon(
                    FeastlyIcon.icon_padlock,
                    color: theme.primaryColor,
                  ),
                ),
                gapH20,
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot password?'.hardcoded,
                        style: theme
                            .extension<CustomTextTheme>()!
                            .body16Regular!
                            .copyWith(color: theme.primaryColor)),
                  ),
                ),
                gapH24,
                Button(
                  text: 'Sign in'.hardcoded,
                  onTap: () {
                    if (email == password) {
                      _showDialog(context);
                    }
                  },
                  variant: ButtonVariant.outlined,
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
                const LoginButtons()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  final theme = Theme.of(context);
  showDialog(
    context: context,
    useSafeArea: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              child: SizedBox(
                child: Icon(
                  FeastlyIcon.button_close,
                  size: 26.0,
                  color: theme.primaryColor,
                ),
              ),
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        content: Text(
          'The password or email is wrong,\n please try again.'.hardcoded,
          style: theme.extension<CustomTextTheme>()!.body16Regular!,
          textAlign: TextAlign.center,
        ),
      );
    },
  );
}
