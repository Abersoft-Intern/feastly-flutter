import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/controllers/change_name_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class ChangeNamePrompt extends ConsumerStatefulWidget {
  const ChangeNamePrompt(this.rootContext, {super.key});

  final BuildContext rootContext;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangeNamePromptState();
}

class _ChangeNamePromptState extends ConsumerState<ChangeNamePrompt> {
  final _nameController = TextEditingController();

  String get name => _nameController.text;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _nameController.text = ref.read(profileProvider).value!.name!;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = ref.watch(changeNameControllerProvider);
    final textTheme = theme.extension<CustomTextTheme>()!;

    ref.listen(changeNameControllerProvider, (_, state) {
      state.showSnackbarOnError(context);

      if (!state.isLoading && !state.hasError) {
        context.pop();
        ref.invalidate(profileProvider);
        state.showSnackbarOnSuccess(
          widget.rootContext,
          'Your password succesfully changed',
        );
        _nameController.clear();
      }
    });
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Change name'.hardcoded,
            style: textTheme.h3,
          ),
        ),
        gapH4,
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Please input your new name.'.hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
        gapH20,
        Form(
          key: _formKey,
          child: Input(
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.maxLength(20)
            ]),
            keyboardType: TextInputType.text,
            controller: _nameController,
          ),
        ),
        gapH40,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Save'.hardcoded,
          onTap: () {
            if (_formKey.currentState!.validate()) {
              ref.read(changeNameControllerProvider.notifier).submit(name);
            }
          },
        ),
        gapH12
      ],
    );
  }
}
