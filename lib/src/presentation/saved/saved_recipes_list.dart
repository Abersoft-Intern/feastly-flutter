import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/common_widgets/saved_recipe_item_loading.dart';
import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/common_widgets/shimmer_loading.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/data/saved_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/saved/saved_none.dart';
import 'package:feastly/src/presentation/saved/saved_tile.dart';
import 'package:feastly/src/presentation/saved/saved_tile_loading.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class SavedRecipesList extends ConsumerWidget {
  const SavedRecipesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final categoriesState = ref.watch(userCategoriesProvider);
    final savedRecipesState = ref.watch(savedRecipesProvider);

    return Shimmer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Saved categories
          categoriesState.when(
            data: (categories) => SizedBox(
              height: categories.isNotEmpty ? 73.0.h : 0,
              child: ListView.separated(
                primary: false,
                separatorBuilder: (context, index) => gapW28,
                itemBuilder: (context, index) {
                  if (index == 0 || index == categories.length + 1) {
                    return const SizedBox.shrink();
                  }
                  return SavedTile(
                    label: categories[index - 1].name,
                    onTap: () {
                      context.pushNamed(
                        RouteName.savedRecipeCategory.name,
                        pathParameters: {
                          'categoryId': categories[index - 1].id.toString()
                        },
                        extra: categories[index - 1].name,
                      );
                    },
                  );
                },
                itemCount: categories.length + 2,
                scrollDirection: Axis.horizontal,
              ),
            ),
            error: (error, st) => const Center(
              child: Text('ERRORR'),
            ),
            loading: () => const SavedTileLoading(),
          ),
          gapH28,
          Divider(
            color: colorTheme.lightGrey,
            height: 0,
            thickness: 1,
            indent: 34,
            endIndent: 34,
          ),
          gapH32,

          // Saved Recipe
          savedRecipesState.when(
            data: (recipes) => recipes.isNotEmpty
                ? ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: recipes.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                        endActionPane: ActionPane(
                          extentRatio: 0.3,
                          motion: const BehindMotion(),
                          children: [
                            SlidableAction(
                              autoClose: false,
                              onPressed: (context) {
                                showCustomBottomSheet(
                                  context,
                                  title: 'Delete match'.hardcoded,
                                  subtitle:
                                      'Are you sure you want to delete this match?'
                                          .hardcoded,
                                  onYesTap: () {},
                                );
                              },
                              backgroundColor: colorTheme.red!,
                              foregroundColor: colorTheme.white,
                              icon: FeastlyIcon.vector_3,
                            )
                          ],
                        ),
                        child: SavedRecipeItem(
                          recipe: recipes[index],
                          onTap: () {
                            context.pushNamed(
                              RouteName.recipeDetail.name,
                              pathParameters: {
                                'id': recipes[index].recipeId.toString()
                              },
                            );
                          },
                        ),
                      );
                    },
                  )
                : SizedBox(
                    height: 400.0.h,
                    child: const SavedNone(),
                  ),
            error: (error, st) => Text(error.toString()),
            loading: () => const ShimmerLoading(
              isLoading: true,
              child: Column(
                children: [
                  SavedRecipeItemLoading(),
                  SavedRecipeItemLoading(),
                  SavedRecipeItemLoading(),
                  SavedRecipeItemLoading(),
                  SavedRecipeItemLoading(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
