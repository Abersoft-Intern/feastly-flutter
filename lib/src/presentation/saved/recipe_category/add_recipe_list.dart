import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';

class AddCategoryRecipe extends StatelessWidget {
  const AddCategoryRecipe({super.key});

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
          onTap: () {},
          rightIcon: FeastlyIcon.uil_plus,
        ),
      ],
    );
  }
}
