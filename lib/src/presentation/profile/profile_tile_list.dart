import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/change_password_prompt.dart';
import 'package:feastly/src/presentation/profile/profile_switch_tile.dart';
import 'package:feastly/src/presentation/profile/profile_tile.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTileList extends StatelessWidget {
  const ProfileTileList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      children: [
        ProfileSwitchTile(
          label: 'Push Notifications'.hardcoded,
        ),
        ProfileSwitchTile(
          label: 'User Location'.hardcoded,
        ),
        ProfileTile(
          label: 'Password'.hardcoded,
          end: Icon(
            FeastlyIcon.icon_edit,
            color: theme.primaryColor,
            size: 24.0.h,
          ),
          onTap: () {
            showPrompt(
              context,
              child: const ChangePasswordPrompt(),
            );
          },
        ),
        ProfileTile(
          label: 'Terms of Use'.hardcoded,
          end: Icon(
            FeastlyIcon.button_arrow_right,
            color: theme.primaryColor,
            size: 24.0.h,
          ),
          onTap: () {},
        ),
        ProfileTile(
          label: 'Privacy Policy'.hardcoded,
          end: Icon(
            FeastlyIcon.button_arrow_right,
            color: theme.primaryColor,
            size: 24.0.h,
          ),
          onTap: () {},
        ),
        ProfileTile(
          label: 'Logged in with'.hardcoded,
          end: Text(
            'Email'.hardcoded,
            style: textTheme.body16Regular,
          ),
        ),
      ],
    );
  }
}
