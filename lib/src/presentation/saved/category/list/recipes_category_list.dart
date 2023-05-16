import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecipesCategoryList extends StatelessWidget {
  const RecipesCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        SavedRecipeItem(
          name: 'Raspberry Pancakes',
          rating: 3,
          cookTime: 30,
          onTap: () {
            context.pushNamed(RouteName.recipeDetail.name,
                pathParameters: {'id': '1'});
          },
        ),
      ],
    );
  }
}
