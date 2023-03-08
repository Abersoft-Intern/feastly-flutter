import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

enum ButtonVariant {
  outlined,
  inverted,
  disabled,
  danger,
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.variant,
    this.onTap,
  });

  final String text;
  final ButtonVariant? variant;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!.body16Bold;
    final colorTheme = theme.extension<CustomColor>()!;

    Color bgColor = theme.primaryColor;
    Color textColor = colorTheme.white!;

    if (variant == ButtonVariant.inverted) {
      bgColor = colorTheme.white!;
      textColor = theme.primaryColor;
    } else if (variant == ButtonVariant.outlined) {
      bgColor = Colors.transparent;
      textColor = theme.primaryColor;
    } else if (variant == ButtonVariant.danger) {
      bgColor = Colors.red;
      textColor = colorTheme.white!;
    } else if (variant == ButtonVariant.disabled) {
      bgColor = const Color(0xFFBDBDBD);
      textColor = colorTheme.white!;
    }

    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(50.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          height: 50.0,
          decoration: BoxDecoration(
            border: variant == ButtonVariant.outlined
                ? Border.all(color: theme.primaryColor, width: 3)
                : null,
            borderRadius: BorderRadius.circular(50),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: textTheme?.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
