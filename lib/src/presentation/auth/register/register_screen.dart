import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/auth/register/register_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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

  final _formKey = GlobalKey<FormState>();

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Input(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'email@email.com'.hardcoded,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.email(),
                        FormBuilderValidators.required(),
                      ]),
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
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.minLength(8),
                        FormBuilderValidators.maxLength(20),
                        FormBuilderValidators.required(),
                      ]),
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
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.minLength(8),
                        FormBuilderValidators.maxLength(20),
                        FormBuilderValidators.required(),
                        (val) {
                          final password = val;
                          if (password == null) return null;
                          if (password != _passwordController.text) {
                            return 'Password confirmation does not match';
                          }
                          return null;
                        }
                      ]),
                      icon: Icon(
                        FeastlyIcon.icon_padlock,
                        color: theme.primaryColor,
                      ),
                    ),
                  ],
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
                    if (_formKey.currentState!.validate()) {
                      final registered = await ref
                          .read(registerControllerProvider.notifier)
                          .register(email.trim(), password.trim());

                      if (registered) {
                        if (context.mounted) {
                          context.pushNamed(RouteName.otp.name);
                        }
                      }
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
