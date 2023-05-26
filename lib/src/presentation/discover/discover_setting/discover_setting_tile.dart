import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverSettingTile extends StatelessWidget {
  const DiscoverSettingTile({
    super.key,
    required this.value,
    required this.selectedValue,
    required this.onTap,
    required this.label,
  });

  final String value;
  final String label;
  final String selectedValue;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    return InkWell(
      onTap: () {
        onTap(value);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.p28.h,
          vertical: Sizes.p16.h,
        ),
        child: Row(
          children: [
            Text(
              label,
              style: textTheme.body16Bold!.copyWith(
                color: value != selectedValue ? colorTheme.unselectedNav : null,
              ),
            ),
            const Spacer(),
            AnimatedContainer(
              curve: Curves.easeIn,
              width: 17.0.h,
              height: 17.0.h,
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedValue == value
                      ? theme.primaryColor
                      : colorTheme.unselectedNav!,
                  width: 2.6.h,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: AnimatedContainer(
                  curve: Curves.easeIn,
                  width: selectedValue == value ? 9.0.h : 0,
                  height: selectedValue == value ? 9.0.h : 0,
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
