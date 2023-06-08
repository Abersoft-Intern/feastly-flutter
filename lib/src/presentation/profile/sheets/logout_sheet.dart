import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/controllers/logout_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:feastly/src/utils/push_notification_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LogoutSheet extends ConsumerWidget {
  const LogoutSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(logoutControllerProvider);

    ref.listen(logoutControllerProvider, (_, state) {
      state.showSnackbarOnError(context);
    });
    return Column(
      children: [
        gapH48,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Yes'.hardcoded,
          onTap: () {
            ref.read(pushNotificationPrefProvider.notifier).disable();
            ref.read(logoutControllerProvider.notifier).submit();
          },
        ),
        gapH32,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          onTap: () {
            context.pop();
          },
          text: 'No'.hardcoded,
          variant: ButtonVariant.inverted,
        )
      ],
    );
  }
}
