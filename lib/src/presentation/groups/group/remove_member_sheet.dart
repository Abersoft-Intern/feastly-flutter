import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/data/group_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/group/controllers/remove_member_controller.dart';
import 'package:feastly/src/presentation/groups/groups/state/groups_state.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RemoveMemberSheet extends ConsumerWidget {
  const RemoveMemberSheet(this.groupId, this.memberId, {super.key});

  final int groupId;
  final int memberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(removeMemberControllerProvider);

    ref.listen(removeMemberControllerProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        context.pop();
        ref.invalidate(groupDetailProvider);
        ref.invalidate(groupsStateProvider);
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
          onTap: () => ref
              .read(removeMemberControllerProvider.notifier)
              .submit(groupId, memberId),
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
