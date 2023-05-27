import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/common_widgets/saved_recipe_item_loading.dart';
import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/data/saved_repository.dart';
import 'package:feastly/src/presentation/saved/category/add/add_recipes_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddRecipesCategoryList extends ConsumerWidget {
  const AddRecipesCategoryList({
    super.key,
    required this.categoryId,
  });

  final int categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(savedRecipesProvider);

    ref.listen(addRecipesControllerProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        context.pop();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Recipe successfully added'),
        ));
      }

      state.showAlertDialogOnError(context);
    });

    return recipes.when(
      data: (recipes) => ListView.builder(
        itemBuilder: (context, index) => SavedRecipeItem(
          recipe: recipes[index],
          onTap: () {
            ref
                .read(addRecipesControllerProvider.notifier)
                .submit(recipes[index].id, categoryId);
          },
          rightIcon: FeastlyIcon.uil_plus,
        ),
        itemCount: recipes.length,
        shrinkWrap: true,
        primary: false,
      ),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Shimmer(
        child: ShimmerLoading(
          isLoading: true,
          child: Column(
            children: [
              SavedRecipeItemLoading(),
              SavedRecipeItemLoading(),
              SavedRecipeItemLoading(),
              SavedRecipeItemLoading(),
            ],
          ),
        ),
      ),
    );
  }
}
