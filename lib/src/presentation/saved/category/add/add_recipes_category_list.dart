import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/common_widgets/saved_recipe_item_loading.dart';
import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/data/saved_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddRecipesCategoryList extends ConsumerWidget {
  const AddRecipesCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(savedRecipesProvider);

    return recipes.when(
      data: (recipes) => ListView.builder(
        itemBuilder: (context, index) => SavedRecipeItem(
          recipe: recipes[index],
          onTap: () {},
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
