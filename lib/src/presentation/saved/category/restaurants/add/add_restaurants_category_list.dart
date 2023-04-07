import 'package:feastly/src/common_widgets/saved_restaurant_item.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';

class AddRestaurantsCategoryList extends StatelessWidget {
  const AddRestaurantsCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        SavedRestaurantItem(
          name: 'Bebek Madura Abah Farouq',
          rating: 3,
          onTap: () {},
          rightIcon: FeastlyIcon.uil_plus,
        ),
      ],
    );
  }
}
