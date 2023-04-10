import 'package:feastly/src/common_widgets/saved_restaurant_item.dart';
import 'package:flutter/material.dart';

class GroupsRestaurants extends StatelessWidget {
  const GroupsRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SavedRestaurantItem(
          name: 'Test',
          rating: 5,
          onTap: () {},
        );
      },
      itemCount: 5,
    );
  }
}
