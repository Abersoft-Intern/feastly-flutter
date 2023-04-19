import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
    this.selected = false,
  });

  final String label;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(25.0),
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.p12.h,
          vertical: Sizes.p4.h,
        ),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
              color: selected! ? theme.primaryColor : colorTheme.unselectedNav!,
              width: 2.0),
        ),
        child: Text(
          label,
          style: textTheme.body16Bold!.copyWith(
            color: selected! ? theme.primaryColor : colorTheme.unselectedNav,
          ),
        ),
      ),
    );
  }
}
