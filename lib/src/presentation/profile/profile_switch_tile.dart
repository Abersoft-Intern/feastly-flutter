// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSwitchTile extends StatefulWidget {
  const ProfileSwitchTile({
    Key? key,
    required this.label,
    required this.onTap,
    this.enabled = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onTap;
  final bool enabled;

  @override
  State<ProfileSwitchTile> createState() => _ProfileSwitchTileState();
}

class _ProfileSwitchTileState extends State<ProfileSwitchTile> {
  var _enabled = false;

  @override
  void initState() {
    super.initState();
    _enabled = widget.enabled;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return InkWell(
      onTap: () {
        setState(() => _enabled = !_enabled);
        widget.onTap();
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
                color: _enabled ? theme.primaryColor : colorTheme.unselectedNav,
                borderRadius: BorderRadius.circular(50.0),
              ),
              height: 30.0.h,
              padding: const EdgeInsets.all(2.0),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn,
                alignment:
                    _enabled ? Alignment.centerRight : Alignment.centerLeft,
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
