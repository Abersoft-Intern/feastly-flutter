import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/groups/controllers/add_group_controller.dart';
import 'package:feastly/src/presentation/groups/groups/state/groups_state.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GroupPrompt extends ConsumerStatefulWidget {
  const GroupPrompt({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GroupPromptState();
}

class _GroupPromptState extends ConsumerState<GroupPrompt> {
  final _nameController = TextEditingController();

  String get name => _nameController.text;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final controller = ref.watch(addGroupControllerProvider);

    ref.listen(addGroupControllerProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        context.pop();
        ref.invalidate(groupsStateProvider);
      }

      state.showSnackbarOnError(context);
    });
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Create a new group'.hardcoded,
            style: textTheme.h3,
          ),
        ),
        gapH4,
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Create a new group to swipe with \nyour friends.'.hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
        gapH20,
        Input(
          keyboardType: TextInputType.text,
          controller: _nameController,
        ),
        gapH40,
        Button(
          isLoading: controller.isLoading,
          disabled: controller.isLoading,
          text: 'Create group'.hardcoded,
          onTap: () {
            ref.read(addGroupControllerProvider.notifier).submit(name);
          },
        ),
        gapH12
      ],
    );
  }
}
