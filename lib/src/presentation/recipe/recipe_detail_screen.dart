import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/recipe/recipe_detail_controller.dart';
import 'package:feastly/src/presentation/recipe/recipe_detail_state.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailScreen extends ConsumerStatefulWidget {
  const RecipeDetailScreen({
    super.key,
    required this.recipeId,
  });

  final int recipeId;

  @override
  ConsumerState<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends ConsumerState<RecipeDetailScreen> {
  final _servings = [1, 2, 3, 4];
  var _selectedServing = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;

    final recipeVal = ref.watch(recipeDetailStateProvider(widget.recipeId));

    return Scaffold(
      body: recipeVal.when(
        data: (recipe) => SingleChildScrollView(
          primary: true,
          child: Column(
            children: [
              SizedBox(
                height: 465.0.h,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration.zero,
                      fadeOutDuration: Duration.zero,
                      placeholderFadeInDuration: Duration.zero,
                      imageUrl: "${Env.baseUrl}${recipe.thumbnail}",
                      placeholder: (context, url) => BlurHash(
                        hash: recipe.blurhash,
                        imageFit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.p28.h,
                        vertical:
                            Sizes.p28.h + MediaQuery.of(context).padding.top,
                      ),
                      child: BackArrowButton(
                        color: colorTheme.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Sizes.p28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      style: textTheme.h2,
                    ),
                    gapH8,
                    Rating(
                      rating: recipe.rating,
                      emptyRatingIcon: Icon(
                        FeastlyIcon.icon_star_unfilled,
                        color: colorTheme.unselectedNav,
                      ),
                    ),
                    gapH12,
                    Text(
                      'Cook time: ${recipe.cookTime} min'.hardcoded,
                      style: textTheme.body16Bold,
                    ),
                    gapH24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ingredients',
                          style: textTheme.h3,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            value: _selectedServing,
                            icon: Icon(
                              FeastlyIcon.button_arrow_down,
                              color: theme.primaryColor,
                            ),
                            isDense: true,
                            underline: null,
                            items: _servings
                                .map(
                                  (serving) => DropdownMenuItem(
                                    value: serving,
                                    child: Text(
                                      '$serving People',
                                      style: textTheme.body16Bold,
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (int? value) {
                              setState(() => _selectedServing = value!);
                            },
                          ),
                        )
                      ],
                    ),
                    gapH8,
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (_, index) {
                        return gapH12;
                      },
                      itemCount: recipe.ingredients.length,
                      itemBuilder: (_, index) => Text(
                        '${(recipe.ingredients[index].qty * _selectedServing)} ${recipe.ingredients[index].name}',
                        style: textTheme.body16Regular,
                      ),
                    ),
                    gapH24,
                    Text(
                      'Cooking method',
                      style: textTheme.h3,
                    ),
                    gapH8,
                    MarkdownBody(
                      data: recipe.cookingMethod,
                    ),
                    gapH32,
                    // if (!recipe.isSaved)
                    //   Button(
                    //     isLoading: controller.isLoading,
                    //     text: 'Save'.hardcoded,
                    //     onTap: () async {
                    //       await ref
                    //           .read(recipeDetailControllerProvider.notifier)
                    //           .saveRecipe(recipe.id);
                    //     },
                    //   ),
                    // gapH24,
                    Button(
                      text: 'Share with friend'.hardcoded,
                      variant: ButtonVariant.outlined,
                      onTap: () async {
                        await ref
                            .read(recipeDetailControllerProvider.notifier)
                            .shareRecipe(recipe);
                      },
                    ),
                    gapH28,
                    Padding(
                      padding: EdgeInsets.only(left: Sizes.p16.h),
                      child: Text(
                        'Recipe credits'.hardcoded,
                        style: textTheme.body16Bold,
                      ),
                    ),
                    gapH16,
                    Padding(
                      padding: EdgeInsets.only(left: Sizes.p16.h),
                      child: Row(
                        children: [
                          Icon(
                            FeastlyIcon.instagram_filled,
                            color: colorTheme.blue,
                            size: 26.0,
                          ),
                          gapW12,
                          Text(
                            'foodbydidizz'.hardcoded,
                            style: textTheme.body16Bold,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        error: (error, st) => Center(child: Text(error.toString())),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
