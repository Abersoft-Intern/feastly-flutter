import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/groups/group/controllers/leave_group_controller.dart';
import 'package:feastly/src/presentation/groups/groups/state/groups_state.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GroupSheet extends ConsumerWidget {
  const GroupSheet(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(leaveGroupControllerProvider);

    ref.listen(leaveGroupControllerProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        ref.invalidate(groupsStateProvider);
        context.goNamed(RouteName.groups.name);
      }

      state.showSnackbarOnError(context);
    });
    return Column(
      children: [
        gapH48,
        Button(
          disabled: controller.isLoading,
          isLoading: controller.isLoading,
          text: 'Yes'.hardcoded,
          onTap: () =>
              ref.read(leaveGroupControllerProvider.notifier).submit(id),
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
