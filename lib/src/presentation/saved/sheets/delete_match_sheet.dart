import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/controllers/delete_recipe_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DeleteMatchSheet extends ConsumerWidget {
  const DeleteMatchSheet(this.rootContext, this.id, {super.key});

  final BuildContext rootContext;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(deleteRecipeControllerProvider);

    ref.listen(deleteRecipeControllerProvider, (_, state) {
      state.showSnackbarOnError(context);

      state.showSnackbarOnSuccess(rootContext, 'Recipe successfully deleted');
    });

    return Column(
      children: [
        gapH48,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Yes'.hardcoded,
          onTap: () {
            ref.read(deleteRecipeControllerProvider.notifier).delete(id);
          },
        ),
        gapH32,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          onTap: () {
            context.pop();
          },
          text: 'No'.hardcoded,
          variant: ButtonVariant.inverted,
        )
      ],
    );
  }
}
