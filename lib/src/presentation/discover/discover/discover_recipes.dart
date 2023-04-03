import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/data/discover_repository.dart';
import 'package:feastly/src/presentation/discover/discover/discover_recipes_card.dart';
import 'package:feastly/src/presentation/discover/discover/discover_recipes_controller.dart';
import 'package:feastly/src/presentation/discover/discover/discover_recipes_none.dart';
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
  var _isCardEmpty = false;
  var _isEndReached = false;
  final _cardController = CardSwiperController();

  Future<void> likeRecipe(int recipeId) async {
    await ref
        .read(discoverRecipesControllerProvider.notifier)
        .likeRecipe(recipeId);
  }

  Future<void> skipRecipe(int recipeId) async {
    await ref
        .read(discoverRecipesControllerProvider.notifier)
        .skipRecipe(recipeId);
  }

  @override
  Widget build(BuildContext context) {
    final recipeList = ref.watch(discoverRecipesProvider);

    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;

    ref.listen(discoverRecipesControllerProvider, (_, state) {
      // Check for error operation
      if (state.hasError && !state.isLoading) {
        _cardController.undo();
        setState(() => _isEndReached = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text(state.error.toString()),
          ),
        );

        // We need to check if all cards has been swiped or not and all the operation should be succeed
      } else if (!state.isLoading) {
        if (_isEndReached) setState(() => _isCardEmpty = true);
      }
    });

    return recipeList.when(
      data: (data) => Column(
        children: [
          Expanded(
            child: data.recipes.isNotEmpty && !_isCardEmpty
                ? CardSwiper(
                    controller: _cardController,
                    backCardOffset: 0,
                    isLoop: false,
                    padding: EdgeInsets.zero,
                    cardsCount: data.recipes.length,
                    onSwipe: (index, __, direction) {
                      final recipeId = data.recipes[index]!.id;
                      if (direction == CardSwiperDirection.right) {
                        likeRecipe(recipeId);
                      } else if (direction == CardSwiperDirection.left) {
                        skipRecipe(recipeId);
                      }
                      return true;
                    },
                    onEnd: () {
                      setState(() {
                        _isEndReached = true;
                      });
                    },
                    cardBuilder: (_, index) =>
                        DiscoverRecipesCard(recipe: data.recipes[index]!),
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
                    if (!_isCardEmpty) _cardController.swipeLeft();
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
                    if (!_isCardEmpty) _cardController.swipeRight();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      error: (error, st) => Text(error.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
