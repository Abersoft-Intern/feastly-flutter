import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/presentation/saved/saved_item.dart';
import 'package:flutter/material.dart';

class AddCategoryRecipesList extends StatelessWidget {
  const AddCategoryRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        SavedItem(
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
