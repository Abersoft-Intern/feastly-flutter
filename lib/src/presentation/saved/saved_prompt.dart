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
import 'package:go_router/go_router.dart';

class SavedPrompt extends ConsumerStatefulWidget {
  const SavedPrompt({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SavedPromptState();
}

class _SavedPromptState extends ConsumerState<SavedPrompt> {
  final _nameController = TextEditingController();

  String get name => _nameController.text;

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
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 2),
          content: Text('Category successfully saved'.hardcoded),
        ));
        ref.invalidate(userCategoriesProvider);
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
        Input(
          keyboardType: TextInputType.text,
          controller: _nameController,
        ),
        gapH40,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Save new list'.hardcoded,
          onTap: () {
            ref.read(addCategoryControllerProvider.notifier).addCategory(name);
          },
        ),
        gapH12
      ],
    );
  }
}