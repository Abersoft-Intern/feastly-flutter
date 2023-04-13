import 'package:feastly/src/common_widgets/buttons/small_button.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatefulWidget {
  const MainHeader({
    super.key,
    required this.selectedMenu,
    required this.onRecipesTap,
    required this.onRestaurantTap,
    this.child,
  });

  final int selectedMenu;
  final VoidCallback onRecipesTap;
  final VoidCallback onRestaurantTap;
  final Widget? child;

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  late int _selectedMenu;

  @override
  void initState() {
    _selectedMenu = widget.selectedMenu;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmallButton(
          'Recipes'.hardcoded,
          icon: FeastlyIcon.button_recipe_inactive,
        ),
        const Spacer(),
        widget.child == null ? Container() : widget.child!
      ],
    );
  }
}
