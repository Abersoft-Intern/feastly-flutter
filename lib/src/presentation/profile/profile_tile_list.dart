import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/profile_switch_tile.dart';
import 'package:feastly/src/presentation/profile/profile_tile.dart';
import 'package:feastly/src/presentation/profile/prompts/change_password_prompt.dart';
import 'package:feastly/src/utils/push_notification_pref.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileTileList extends ConsumerWidget {
  const ProfileTileList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pushNotificationState = ref.watch(pushNotificationPrefProvider);

    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      children: [
        ProfileSwitchTile(
          label: 'Push Notifications'.hardcoded,
          enabled: pushNotificationState,
          onTap: () {
            pushNotificationState
                ? ref.read(pushNotificationPrefProvider.notifier).disable()
                : ref.read(pushNotificationPrefProvider.notifier).enable();
          },
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
              child: ChangePasswordPrompt(context),
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
          onTap: () async {
            if (!await launchUrl(
                Uri.parse('https://appfeastly.com/terms-conditions'))) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 2),
                    content: Text(
                        'An error occured while opening the url'.hardcoded),
                  ),
                );
              }
            }
          },
        ),
        ProfileTile(
          label: 'Privacy Policy'.hardcoded,
          end: Icon(
            FeastlyIcon.button_arrow_right,
            color: theme.primaryColor,
            size: 24.0.h,
          ),
          onTap: () async {
            if (!await launchUrl(
                Uri.parse('https://appfeastly.com/terms-conditions'))) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 2),
                    content: Text(
                        'An error occured while opening the url'.hardcoded),
                  ),
                );
              }
            }
          },
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
