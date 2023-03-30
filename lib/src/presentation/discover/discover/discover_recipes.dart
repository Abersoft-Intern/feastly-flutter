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

  @override
  Widget build(BuildContext context) {
    final recipeList = ref.watch(discoverRecipesProvider);
    final controller = ref.watch(discoverRecipesControllerProvider);

    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;

    return recipeList.when(
      data: (data) => Column(
        children: [
          Expanded(
            child: data.recipes.isNotEmpty && !_isCardEmpty
                ? CardSwiper(
                    backCardOffset: 0,
                    isLoop: false,
                    padding: EdgeInsets.zero,
                    cardsCount: data.recipes.length,
                    onSwipe: (index, __, direction) {
                      return true;
                    },
                    onEnd: () {
                      setState(() {
                        _isCardEmpty = true;
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
                  onTap: () {},
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
                  onTap: () {},
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
