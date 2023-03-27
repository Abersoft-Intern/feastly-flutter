import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
      child: Column(
        children: [
          Button(
            text: 'Invite friends to feastly'.hardcoded,
            onTap: () {},
            variant: ButtonVariant.inverted,
          ),
          gapH32,
          Button(
            text: 'Logout'.hardcoded,
            onTap: () {},
          ),
          gapH32,
          Button(
            text: 'Remove Account'.hardcoded,
            onTap: () {},
            variant: ButtonVariant.danger,
          ),
        ],
      ),
    );
  }
}
