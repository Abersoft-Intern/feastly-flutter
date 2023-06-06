import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/sheets/logout_sheet.dart';
import 'package:feastly/src/presentation/profile/sheets/remove_account_sheet.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileButtons extends ConsumerWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            onTap: () {
              showCustomBottomSheet(context,
                  title: 'Logout'.hardcoded,
                  subtitle: 'Are you sure you want to log out?'.hardcoded,
                  customButtons: const LogoutSheet());
            },
          ),
          gapH32,
          Button(
            text: 'Remove Account'.hardcoded,
            onTap: () {
              showCustomBottomSheet(
                context,
                title: 'Remove account'.hardcoded,
                subtitle:
                    'Are you sure you want to remove your account? This cannot be undone.'
                        .hardcoded,
                customButtons: const RemoveAccountSheet(),
              );
            },
            variant: ButtonVariant.danger,
          ),
        ],
      ),
    );
  }
}
