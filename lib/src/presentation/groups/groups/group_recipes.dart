import 'package:feastly/src/common_widgets/error_component.dart';
import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/common_widgets/saved_recipe_item_loading.dart';
import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/data/group_repository.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/groups/groups/state/groups_state.dart';
import 'package:feastly/src/presentation/groups/groups_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GroupRecipes extends ConsumerWidget {
  const GroupRecipes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeGroup = ref.watch(activeGroupProvider);
    final groupRecipes = ref.watch(groupRecipesProvider(activeGroup?.id));

    return groupRecipes.when(
      data: (recipes) => recipes.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => SavedRecipeItem(
                recipe: recipes[index],
                onTap: () => context.pushNamed(
                  RouteName.recipeDetail.name,
                  pathParameters: {
                    'id': recipes[index].recipeId.toString(),
                  },
                ),
              ),
              itemCount: recipes.length,
            )
          : const GroupsNone(),
      error: (error, st) => Center(
        child: ErrorComponent(
          onRetry: () {
            ref.invalidate(groupsStateProvider);
            ref.invalidate(groupRecipesProvider);
          },
          isLoading: groupRecipes.isRefreshing,
        ),
      ),
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
