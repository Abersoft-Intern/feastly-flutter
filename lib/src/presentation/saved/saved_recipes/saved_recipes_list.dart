import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/saved/saved_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class SavedRecipesList extends StatelessWidget {
  const SavedRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    return ListView(
      primary: false,
      shrinkWrap: true,
      children: [
        Slidable(
          endActionPane: ActionPane(
            extentRatio: 0.3,
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                onPressed: null,
                backgroundColor: colorTheme.red!,
                foregroundColor: colorTheme.white,
                icon: FeastlyIcon.vector_3,
              )
            ],
          ),
          child: SavedItem(
            cookTime: 30,
            name: 'Pancake',
            rating: 4,
            onTap: () {
              context
                  .pushNamed(RouteName.recipeDetail.name, params: {'id': '1'});
            },
          ),
        ),
        SavedItem(cookTime: 30, name: 'Pancake', rating: 4, onTap: () {}),
        SavedItem(cookTime: 30, name: 'Pancake', rating: 4, onTap: () {}),
        SavedItem(cookTime: 30, name: 'Pancake', rating: 4, onTap: () {}),
        SavedItem(cookTime: 30, name: 'Pancake', rating: 4, onTap: () {}),
        SavedItem(cookTime: 30, name: 'Pancake', rating: 4, onTap: () {}),
      ],
    );
  }
}
