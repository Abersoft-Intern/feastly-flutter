import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedTileButton extends StatelessWidget {
  const SavedTileButton({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () {},
      child: Ink(
        width: 134.0.h,
        height: 73.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage("assets/images/category_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: theme
                .extension<CustomTextTheme>()!
                .body16Bold!
                .copyWith(color: theme.extension<CustomColor>()!.white),
          ),
        ),
      ),
    );
  }
}