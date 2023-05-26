import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_shadow.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/domain/discover/recipe_preview.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipesCard extends StatelessWidget {
  const DiscoverRecipesCard({
    super.key,
    required this.recipe,
  });

  final RecipePreview recipe;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    final shadowTheme = theme.extension<CustomShadow>()!;

    return Stack(
      children: [
        CachedNetworkImage(
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
          placeholderFadeInDuration: Duration.zero,
          imageUrl: "${Env.baseUrl}${recipe.thumbnail}",
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            margin: EdgeInsets.symmetric(
              horizontal: Sizes.p16.h,
            ),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BlurHash(
                hash: recipe.blurhash,
                imageFit: BoxFit.cover,
              ),
            ),
          ),
          imageBuilder: (context, imageProvider) => Container(
            margin: EdgeInsets.symmetric(
              horizontal: Sizes.p16.h,
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: Sizes.p16.h,
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipe.name,
                style: textTheme.h2!.copyWith(
                  color: colorTheme.white,
                  shadows: [shadowTheme.textShadow!],
                ),
              ),
              gapH4,
              Rating(
                rating: recipe.rating,
              ),
              gapH16,
              Text(
                'Cook time: ${recipe.cookTime} min'.hardcoded,
                style: textTheme.body16Bold!.copyWith(
                  color: colorTheme.white,
                  shadows: [shadowTheme.textShadow!],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
