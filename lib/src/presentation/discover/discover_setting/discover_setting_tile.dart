import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class DiscoverSettingTile extends StatelessWidget {
  const DiscoverSettingTile({
    super.key,
    required this.value,
    required this.selectedValue,
    required this.onChanged,
    required this.label,
  });

  final String value;
  final String label;
  final String selectedValue;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    return RadioListTile(
      value: value,
      controlAffinity: ListTileControlAffinity.trailing,
      dense: true,
      selected: value == selectedValue,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -1),
      contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
      groupValue: selectedValue,
      onChanged: onChanged,
      title: Text(
        label,
        style: textTheme.body16Bold!.copyWith(
          color: value != selectedValue ? colorTheme.unselectedNav : null,
        ),
      ),
    );
  }
}
