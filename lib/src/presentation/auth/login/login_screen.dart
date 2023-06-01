import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/auth/login/login_controller.dart';
import 'package:feastly/src/presentation/auth/login/login_header.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  static const emailKey = Key('email-input');
  static const passwordKey = Key('password-input');

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
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
    final controller = ref.watch(loginControllerProvider);

    ref.listen(loginControllerProvider, (_, state) {
      state.showAlertDialogOnError(context);
    });

    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(children: [
          const LoginHeader(),
          Padding(
            padding: EdgeInsets.all(Sizes.p28.h),
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
                    size: Sizes.backIconSize,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(height: 250.0.h),
                Text(
                  'Hello'.hardcoded,
                  style: textTheme.h2!,
                ),
                gapH12,
                Text(
                  'Sign into your account.'.hardcoded,
                  style: textTheme.body16Regular!,
                ),
                gapH48,
                Input(
                  key: LoginScreen.emailKey,
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
                  key: LoginScreen.passwordKey,
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
                        style: textTheme.body16Regular!
                            .copyWith(color: theme.primaryColor)),
                  ),
                ),
                gapH36,
                Button(
                  isLoading: controller.isLoading,
                  disabled: controller.isLoading,
                  text: 'Sign in'.hardcoded,
                  onTap: () async {
                    final data = await ref
                        .read(loginControllerProvider.notifier)
                        .login(email, password);

                    if (context.mounted && data != null) {
                      if (!data.user.confirmed) {
                        context.pushNamed(RouteName.otp.name);
                      } else if (data.user.confirmed &&
                          data.user.name == null) {
                        context.pushNamed(RouteName.username.name);
                      } else {
                        context.pushNamed(RouteName.onboarding.name);
                      }
                    }
                  },
                  variant: ButtonVariant.outlined,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
