import 'package:feastly/src/common_widgets/saved_restaurant_item.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RestaurantsCategoryList extends StatelessWidget {
  const RestaurantsCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        SavedRestaurantItem(
          name: 'Ngikan < Ngakan',
          rating: 3,
          onTap: () {
            context.pushNamed(RouteName.recipeDetail.name, params: {'id': '1'});
          },
        ),
      ],
    );
  }
}
