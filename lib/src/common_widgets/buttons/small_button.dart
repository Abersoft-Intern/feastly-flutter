import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
    this.text, {
    super.key,
    this.isSelected = false,
    required this.icon,
    required this.onTap,
  });

  final bool? isSelected;
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;

    return Material(
      color: isSelected! ? theme.primaryColor : Colors.transparent,
      borderRadius: BorderRadius.circular(50.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        onTap: onTap,
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: isSelected! ? Sizes.p16 : 0),
          height: 40.0.h,
          width: !isSelected! ? 40.0 : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: Sizes.p24.h,
                color:
                    isSelected! ? colorTheme.white : colorTheme.unselectedNav,
              ),
              if (isSelected!) SizedBox(width: Sizes.p8.h),
              if (isSelected!)
                Text(
                  text,
                  style:
                      textTheme.body16Bold!.copyWith(color: colorTheme.white),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
