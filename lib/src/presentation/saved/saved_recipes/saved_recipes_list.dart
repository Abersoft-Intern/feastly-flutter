import 'package:feastly/src/presentation/saved/saved_item.dart';
import 'package:flutter/material.dart';

class SavedRecipesList extends StatelessWidget {
  const SavedRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SavedItem(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        SavedItem(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        SavedItem(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        SavedItem(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        SavedItem(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        SavedItem(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
      ],
    );
  }
}
