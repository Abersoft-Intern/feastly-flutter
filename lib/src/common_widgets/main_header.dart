import 'package:feastly/src/common_widgets/buttons/small_button.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmallButton(
          'Recipes'.hardcoded,
          icon: FeastlyIcon.button_recipe_inactive,
        ),
        const Spacer(),
        child == null ? Container() : child!
      ],
    );
  }
}
