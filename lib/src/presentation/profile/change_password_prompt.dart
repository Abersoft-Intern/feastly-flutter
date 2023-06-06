import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/controllers/change_password_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordPrompt extends ConsumerStatefulWidget {
  const ChangePasswordPrompt({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangePasswordPromptState();
}

class _ChangePasswordPromptState extends ConsumerState<ChangePasswordPrompt> {
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _newPasswordVerifyController = TextEditingController();

  String get oldPassword => _oldPasswordController.text;
  String get newPassword => _newPasswordController.text;
  String get newPasswordVerify => _newPasswordVerifyController.text;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _newPasswordVerifyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = ref.watch(changePasswordControllerProvider);
    final textTheme = theme.extension<CustomTextTheme>()!;

    ref.listen(changePasswordControllerProvider, (_, state) {
      if (!state.isLoading && state.hasError) {
        state.showSnackbarOnError(context);
      } else if (!state.isLoading && !state.hasError) {
        context.pop();
      }
    });

    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Change password'.hardcoded,
            style: textTheme.h3,
          ),
        ),
        gapH4,
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Please input your new password.'.hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
        gapH20,
        Form(
          key: _formKey,
          child: Column(
            children: [
              Input(
                hintText: 'Current password',
                isPassword: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.minLength(8),
                  FormBuilderValidators.maxLength(20),
                  FormBuilderValidators.required(),
                ]),
                keyboardType: TextInputType.text,
                controller: _oldPasswordController,
              ),
              gapH20,
              Input(
                hintText: 'New password',
                isPassword: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.minLength(8),
                  FormBuilderValidators.maxLength(20),
                  FormBuilderValidators.required(),
                ]),
                keyboardType: TextInputType.text,
                controller: _newPasswordController,
              ),
              gapH20,
              Input(
                hintText: 'New password confirmation',
                isPassword: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  (val) {
                    final verify = val;
                    if (verify == null) return null;
                    if (verify != newPassword) {
                      return 'Password confirmation does not match';
                    }
                    return null;
                  }
                ]),
                keyboardType: TextInputType.text,
                controller: _newPasswordVerifyController,
              ),
            ],
          ),
        ),
        gapH40,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Save'.hardcoded,
          onTap: () {
            if (_formKey.currentState!.validate()) {
              ref
                  .read(changePasswordControllerProvider.notifier)
                  .submit(oldPassword, newPassword);
            }
          },
        ),
        gapH12
      ],
    );
  }
}
