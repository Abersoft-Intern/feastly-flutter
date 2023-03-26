import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverSettingChip extends StatelessWidget {
  const DiscoverSettingChip({
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
    return FilterChip(
      selected: selected!,
      selectedColor: Colors.transparent,
      showCheckmark: false,
      pressElevation: 0.0,
      shape: StadiumBorder(
        side: BorderSide(
          width: 2.0,
          color: selected! ? theme.primaryColor : colorTheme.unselectedNav!,
        ),
      ),
      visualDensity: const VisualDensity(horizontal: 0.0, vertical: -3),
      backgroundColor: Colors.transparent,
      onSelected: (value) {},
      labelStyle: textTheme.body16Bold!.copyWith(
        color: selected! ? theme.primaryColor : colorTheme.unselectedNav,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.p8.h,
        vertical: 0.0.h,
      ),
      label: Text(label),
    );
  }
}
