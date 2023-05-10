import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/saved/saved_tile.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class SavedRecipesList extends StatelessWidget {
  const SavedRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    return Column(
      children: [
        SizedBox(
          height: 73.0.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: Sizes.p28.h,
              ),
              SavedTile(
                label: 'Lunch Places',
                onTap: () {
                  context.pushNamed(
                    RouteName.savedRecipeCategory.name,
                    params: {'categoryId': '1'},
                  );
                },
              ),
            ],
          ),
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
        ListView(
          primary: false,
          shrinkWrap: true,
          children: [
            Slidable(
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
                        subtitle: 'Are you sure you want to delete this match?'
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
                cookTime: 30,
                name: 'Pancake',
                rating: 4,
                onTap: () {
                  context.pushNamed(RouteName.recipeDetail.name,
                      params: {'id': '1'});
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
