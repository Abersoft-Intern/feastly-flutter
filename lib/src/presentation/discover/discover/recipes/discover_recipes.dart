import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/data/discover_repository.dart';
import 'package:feastly/src/presentation/discover/discover/recipes/discover_recipes_card.dart';
import 'package:feastly/src/presentation/discover/discover/recipes/discover_recipes_controller.dart';
import 'package:feastly/src/presentation/discover/discover/recipes/discover_recipes_loading.dart';
import 'package:feastly/src/presentation/discover/discover/recipes/discover_recipes_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipes extends ConsumerStatefulWidget {
  const DiscoverRecipes({super.key});

  @override
  ConsumerState<DiscoverRecipes> createState() => _DiscoverRecipesState();
}

class _DiscoverRecipesState extends ConsumerState<DiscoverRecipes> {
  var _isEndReached = false;
  final _cardController = CardSwiperController();

  @override
  Widget build(BuildContext context) {
    final recipeList = ref.watch(discoverRecipesProvider);

    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;

    ref.listen(discoverRecipesControllerProvider, (_, state) {
      // Check for error operation
      if (state.hasError && !state.isLoading) {
        setState(() => _isEndReached = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text(state.error.toString()),
          ),
        );
      }
    });

    return recipeList.when(
      data: (recipes) => Column(
        children: [
          Expanded(
            child: recipes.isNotEmpty && !_isEndReached
                ? CardSwiper(
                    allowedSwipeDirection:
                        AllowedSwipeDirection.symmetric(horizontal: true),
                    numberOfCardsDisplayed: recipes.length == 1 ? 1 : 2,
                    controller: _cardController,
                    backCardOffset: const Offset(0, 0),
                    isLoop: false,
                    cardsCount: recipes.length,
                    onSwipe: (index, __, direction) async {
                      final recipeId = recipes[index].id;
                      if (direction == CardSwiperDirection.right) {
                        return await ref
                            .read(discoverRecipesControllerProvider.notifier)
                            .likeRecipe(recipeId);
                      } else if (direction == CardSwiperDirection.left) {
                        return await ref
                            .read(discoverRecipesControllerProvider.notifier)
                            .skipRecipe(recipeId);
                      }

                      return false;
                    },
                    onEnd: () {
                      setState(() {
                        _isEndReached = true;
                      });
                    },
                    cardBuilder: (_, index) =>
                        DiscoverRecipesCard(recipe: recipes[index]),
                  )
                : const DiscoverRecipesNone(),
          ),
          gapH28,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p36.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  icon: Icon(
                    FeastlyIcon.icon_delete,
                    color: colorTheme.white,
                    size: Sizes.p24.h,
                  ),
                  onTap: () {
                    if (!_isEndReached) _cardController.swipeLeft();
                  },
                  variant: ActionButtonVariant.danger,
                ),
                gapW8,
                ActionButton(
                  icon: Icon(
                    FeastlyIcon.icon_go_back,
                    color: colorTheme.yellow,
                    size: Sizes.p24.h,
                  ),
                  variant: ActionButtonVariant.neutral,
                  onTap: () {},
                ),
                gapW8,
                ActionButton(
                  icon: Icon(
                    FeastlyIcon.heart_alt,
                    size: Sizes.p24.h,
                    color: colorTheme.white,
                  ),
                  onTap: () {
                    if (!_isEndReached) _cardController.swipeRight();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      error: (error, st) => Text(error.toString()),
      loading: () => const DiscoverRecipesLoading(),
    );
  }
}
