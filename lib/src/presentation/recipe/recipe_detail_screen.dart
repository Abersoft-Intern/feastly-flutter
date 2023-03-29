import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/custom_chip.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/recipe/recipe_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailScreen extends ConsumerWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;

    final recipeValue = ref.watch(recipeControllerProvider);
    return Scaffold(
        body: recipeValue.when(
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
                    imageUrl: recipe.imageUrl,
                  ),
                  Padding(
                    padding: EdgeInsets.all(Sizes.p28.h),
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
                  Text(recipe.rating.toString()),
                  gapH12,
                  Text(
                    'Cook time: ${recipe.cookTime} min'.hardcoded,
                    style: textTheme.body16Bold,
                  ),
                  gapH16,
                  Wrap(
                    spacing: Sizes.p12.h,
                    runSpacing: Sizes.p16.h,
                    children: const [
                      CustomChip(
                        label: 'American',
                        selected: true,
                      ),
                      CustomChip(
                        label: 'American',
                        selected: true,
                      ),
                      CustomChip(
                        label: 'American',
                        selected: true,
                      )
                    ],
                  ),
                  gapH24,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ingredients',
                        style: textTheme.h3,
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(4.0),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Row(
                            children: [
                              Text(
                                '4 people',
                                style: textTheme.body16Bold,
                              ),
                              SizedBox(
                                width: Sizes.p8.h,
                              ),
                              Icon(
                                FeastlyIcon.button_arrow_down,
                                color: theme.primaryColor,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (_, index) {
                      return gapH12;
                    },
                    itemCount: recipe.ingredients.length,
                    itemBuilder: (_, index) => Text(
                      '${recipe.ingredients[index].qty} ${recipe.ingredients[index].name}',
                      style: textTheme.body16Regular,
                    ),
                  ),
                  gapH24,
                  Text(
                    'Cooking method',
                    style: textTheme.h3,
                  ),
                  gapH8,
                  Text(
                    recipe.cookingMethod,
                  ),
                  gapH32,
                  Button(
                    text: 'Save'.hardcoded,
                    onTap: () {},
                  ),
                  gapH24,
                  Button(
                    text: 'Share with friend'.hardcoded,
                    variant: ButtonVariant.outlined,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      error: (error, st) => const Center(child: Text('Error')),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    ));
  }
}
