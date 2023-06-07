import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/data/saved_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/controllers/add_category_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class SavedPrompt extends ConsumerStatefulWidget {
  const SavedPrompt(this.rootContext, {super.key});

  final BuildContext rootContext;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SavedPromptState();
}

class _SavedPromptState extends ConsumerState<SavedPrompt> {
  final _nameController = TextEditingController();

  String get name => _nameController.text;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;

    final controller = ref.watch(addCategoryControllerProvider);

    ref.listen(addCategoryControllerProvider, (_, state) {
      state.showSnackbarOnError(context);

      if (!state.isLoading && !state.hasError) {
        context.pop();
        ref.invalidate(userCategoriesProvider);
        state.showSnackbarOnSuccess(
            widget.rootContext, 'Category successfully saved'.hardcoded);
        _nameController.clear();
      }
    });
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Create a new list'.hardcoded,
            style: textTheme.h3,
          ),
        ),
        gapH4,
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Create a new list so you can \norganize your foods.'.hardcoded,
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
              FormBuilderValidators.maxLength(12)
            ]),
            keyboardType: TextInputType.text,
            controller: _nameController,
          ),
        ),
        gapH40,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Save new list'.hardcoded,
          onTap: () {
            if (_formKey.currentState!.validate()) {
              ref
                  .read(addCategoryControllerProvider.notifier)
                  .addCategory(name.trim());
            }
          },
        ),
        gapH12
      ],
    );
  }
}
