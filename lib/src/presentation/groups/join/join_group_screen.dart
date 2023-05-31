import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/groups/state/groups_state.dart';
import 'package:feastly/src/presentation/groups/join/controllers/join_group_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class JoinGroupScreen extends ConsumerStatefulWidget {
  const JoinGroupScreen({super.key});

  @override
  ConsumerState<JoinGroupScreen> createState() => _JoinGroupScreenState();
}

class _JoinGroupScreenState extends ConsumerState<JoinGroupScreen> {
  final _codeController = TextEditingController();

  String get code => _codeController.text;

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final controller = ref.watch(joinGroupControllerProvider);

    ref.listen(joinGroupControllerProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        context.pop();
        ref.invalidate(groupsStateProvider);
      }

      if (!state.isLoading && state.hasError) {
        final message = state.error.toString();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 2),
          content: Text(message),
        ));
      }
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.all(Sizes.p28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackArrowButton(),
              gapH16,
              Text(
                'Enter code'.hardcoded,
                style: textTheme.h3,
              ),
              gapH8,
              Text(
                'Enter the code of the group you want to join and start swiping together.'
                    .hardcoded,
                style: textTheme.body16Regular,
              ),
              SizedBox(
                height: 164.0.h,
              ),
              Input(
                controller: _codeController,
                keyboardType: TextInputType.number,
                icon: Icon(
                  FeastlyIcon.icon_code,
                  color: theme.primaryColor,
                ),
              ),
              SizedBox(
                height: 124.0.h,
              ),
              Button(
                disabled: controller.isLoading,
                isLoading: controller.isLoading,
                text: 'Join group'.hardcoded,
                onTap: () {
                  ref.read(joinGroupControllerProvider.notifier).submit(code);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
