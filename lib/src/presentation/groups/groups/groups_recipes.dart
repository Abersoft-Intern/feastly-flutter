import 'package:feastly/src/common_widgets/saved_recipe_item.dart';
import 'package:flutter/material.dart';

class GroupsRecipes extends StatelessWidget {
  const GroupsRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SavedRecipeItem(
          name: 'Test',
          rating: 5,
          cookTime: 6,
          onTap: () {},
        );
      },
      itemCount: 5,
    );
  }
}
