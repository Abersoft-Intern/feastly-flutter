import 'package:feastly/src/presentation/saved/category/add_food_list.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AddFood(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        AddFood(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        AddFood(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        AddFood(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        AddFood(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        AddFood(
          cookTime: 30,
          name: 'Pancake',
          rating: 4,
        ),
        
      ],
    );
  }
}
