import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    this.isLoading = false,
    this.disabled = false,
  });

  final String text;
  final ButtonVariant? variant;
  final VoidCallback? onTap;
  final bool? isLoading;
  final bool? disabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!.body16Bold;
    final colorTheme = theme.extension<CustomColor>()!;

    Color bgColor = theme.primaryColor;
    Color textColor = colorTheme.white!;
    BoxShadow shadow = const BoxShadow(color: Colors.transparent);

    if (variant == ButtonVariant.inverted) {
      bgColor = colorTheme.white!;
      shadow = const BoxShadow(
        blurStyle: BlurStyle.outer,
        color: Color.fromARGB(30, 0, 0, 0),
        blurRadius: 20.0,
      );
      textColor = theme.primaryColor;
    } else if (variant == ButtonVariant.outlined) {
      bgColor = Colors.transparent;
      textColor = theme.primaryColor;
    } else if (variant == ButtonVariant.danger) {
      bgColor = colorTheme.red!;
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
        onTap: disabled! ? () {} : onTap,
        child: Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          height: 50.0.h,
          decoration: BoxDecoration(
            border: variant == ButtonVariant.outlined
                ? Border.all(color: theme.primaryColor, width: 3.0)
                : null,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [shadow],
          ),
          alignment: Alignment.center,
          child: isLoading!
              ? SizedBox(
                  width: 25.0.h,
                  height: 25.0.h,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: textColor,
                  ),
                )
              : Text(
                  text,
                  style: textTheme?.copyWith(color: textColor),
                ),
        ),
      ),
    );
  }
}
