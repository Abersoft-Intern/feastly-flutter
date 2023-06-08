import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/common_widgets/rating.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/domain/saved/saved_recipe.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedRecipeItem extends StatelessWidget {
  const SavedRecipeItem({
    super.key,
    this.onTap,
    this.rightIcon,
    required this.recipe,
  });

  final SavedRecipe recipe;
  final IconData? rightIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes.p28.h, vertical: Sizes.p12.h),
        child: Row(
          children: [
            CachedNetworkImage(
              fadeInDuration: Duration.zero,
              fadeOutDuration: Duration.zero,
              placeholderFadeInDuration: Duration.zero,
              imageUrl: "${Env.baseUrl}${recipe.thumbnail}",
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: 80.0.h,
                  width: 66.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              placeholder: (context, url) => SizedBox(
                height: 80.0.h,
                width: 66.0.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: BlurHash(
                    hash: recipe.blurhash,
                    imageFit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            gapW24,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.name,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.body16Bold,
                ),
                gapH8,
                Rating(
                  rating: recipe.rating,
                  emptyRatingIcon: Icon(
                    FeastlyIcon.icon_star_unfilled,
                    color: colorTheme.unselectedNav,
                  ),
                ),
                gapH4,
                Text(
                  'Cook time: ${recipe.cookTime}',
                  style: textTheme.body16Regular,
                ),
              ],
            ),
            const Spacer(),
            Icon(
              rightIcon ?? FeastlyIcon.button_arrow_right,
              size: Sizes.p24.h,
              color: theme.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
