import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/auth/register/register_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
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
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final state = ref.watch(registerControllerProvider);

    ref.listen(registerControllerProvider, (_, state) {
      state.showAlertDialogOnError(context);
    });

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
                controller: _emailController,
                icon: Icon(
                  FeastlyIcon.icon_email,
                  color: theme.primaryColor,
                ),
              ),
              gapH24,
              Input(
                keyboardType: TextInputType.text,
                hintText: 'Password'.hardcoded,
                controller: _passwordController,
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
                  disabled: state.isLoading,
                  isLoading: state.isLoading,
                  text: 'Register'.hardcoded,
                  onTap: () async {
                    final controller =
                        ref.read(registerControllerProvider.notifier);
                    await controller.register(email, password);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
