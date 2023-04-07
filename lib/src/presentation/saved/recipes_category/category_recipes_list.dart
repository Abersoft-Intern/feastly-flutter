import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/saved/saved_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryRecipesList extends StatelessWidget {
  const CategoryRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        SavedItem(
          name: 'Raspberry Pancakes',
          rating: 3,
          cookTime: 30,
          onTap: () {
            context.pushNamed(RouteName.recipeDetail.name, params: {'id': '1'});
          },
        ),
      ],
    );
  }
}
