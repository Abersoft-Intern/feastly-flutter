import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSwitchTile extends StatefulWidget {
  const ProfileSwitchTile({
    super.key,
    required this.label,
    this.onTap,
  });

  final String label;
  final VoidCallback? onTap;

  @override
  State<ProfileSwitchTile> createState() => _ProfileSwitchTileState();
}

class _ProfileSwitchTileState extends State<ProfileSwitchTile> {
  var enabled = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
      onTap: () {
        setState(() => enabled = !enabled);
      },
      child: Ink(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.p28.h,
          vertical: Sizes.p16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: textTheme.body16Bold,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn,
              width: 50.0.h,
              decoration: BoxDecoration(
                color: enabled ? theme.primaryColor : colorTheme.unselectedNav,
                borderRadius: BorderRadius.circular(50.0),
              ),
              height: 30.0.h,
              padding: const EdgeInsets.all(2.0),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn,
                alignment:
                    enabled ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 26.0.h,
                  height: 26.0.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
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
