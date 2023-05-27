import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/common_widgets/saved_recipe_item_loading.dart';
import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/data/saved_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipesCategoryList extends ConsumerWidget {
  final int categoryId;

  const RecipesCategoryList({
    required this.categoryId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(SavedRecipesByCategoryProvider(categoryId));

    return recipes.when(
      data: (recipes) => ListView.builder(
        itemBuilder: (context, index) =>
            SavedRecipeItem(recipe: recipes[index]),
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
            ],
          ),
        ),
      ),
    );
  }
}
