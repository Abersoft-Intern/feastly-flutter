import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.label,
    required this.end,
    this.onTap,
  });

  final String label;
  final Widget end;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.p28.h,
          vertical: Sizes.p16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: textTheme.body16Bold,
            ),
            end
          ],
        ),
      ),
    );
  }
}
