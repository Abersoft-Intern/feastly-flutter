import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ActionButtonVariant { danger, neutral }

class ActionButton extends StatelessWidget {
  const ActionButton(
      {super.key,
      this.onTap,
      this.variant,
      required this.icon,
      this.isLoading = false});

  final VoidCallback? onTap;
  final ActionButtonVariant? variant;
  final Icon icon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color bgColor = theme.primaryColor;

    final colorTheme = theme.extension<CustomColor>()!;
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
          height: 80.0.r,
          width: 80.0.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [shadow],
          ),
          child: isLoading
              ? Center(
                  child: SizedBox.square(
                    dimension: Sizes.p24.h,
                    child: CircularProgressIndicator(
                      color: colorTheme.white,
                      strokeWidth: 3.0.h,
                    ),
                  ),
                )
              : icon,
        ),
      ),
    );
  }
}
