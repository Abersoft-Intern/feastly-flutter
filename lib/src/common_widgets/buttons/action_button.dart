import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:flutter/material.dart';

enum ActionButtonVariant { danger, neutral }

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onTap,
    this.variant,
    required this.icon,
  });

  final VoidCallback? onTap;
  final ActionButtonVariant? variant;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color bgColor = theme.primaryColor;
    BoxShadow shadow = const BoxShadow(color: Colors.transparent);

    if (variant == ActionButtonVariant.danger) {
      bgColor = theme.extension<CustomColor>()!.red!;
    } else if (variant == ActionButtonVariant.neutral) {
      bgColor = theme.extension<CustomColor>()!.white!;
      shadow = const BoxShadow(
        blurStyle: BlurStyle.outer,
        color: Color.fromARGB(30, 0, 0, 0),
        blurRadius: 20.0,
      );
    }

    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(50.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        onTap: onTap,
        child: Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [shadow],
          ),
          child: icon,
        ),
      ),
    );
  }
}
