import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/group_avatar.dart';
import 'package:feastly/src/presentation/groups/group_avatar_loading.dart';
import 'package:feastly/src/presentation/groups/groups/prompts/group_prompt.dart';
import 'package:feastly/src/presentation/groups/groups/state/groups_state.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupList extends ConsumerStatefulWidget {
  const GroupList({super.key});

  @override
  ConsumerState<GroupList> createState() => _GroupListState();
}

class _GroupListState extends ConsumerState<GroupList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    final groupsState = ref.watch(groupsStateProvider);

    return SizedBox(
      height: 70.0.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          gapW16,
          SizedBox(
            width: 80.0.h,
            child: InkResponse(
              radius: 40.0,
              onTap: () {
                showPrompt(
                  context,
                  child: GroupPrompt(context),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Ink(
                        width: 42.0.h,
                        height: 42.0.h,
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            FeastlyIcon.uil_plus,
                            size: Sizes.p28.h,
                            color: colorTheme.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'New Group'.hardcoded,
                    style:
                        textTheme.bold12!.copyWith(color: theme.primaryColor),
                  )
                ],
              ),
            ),
          ),
          groupsState.when(
            data: (groups) => groups.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: groups.length,
                    itemBuilder: (context, index) => GroupAvatar(
                      group: groups[index],
                      onTap: () => ref
                          .read(groupsStateProvider.notifier)
                          .changeActiveGroup(index),
                    ),
                  )
                : Container(),
            error: (error, stackTrace) => Container(),
            loading: () => const GroupAvatarLoading(),
          )
        ],
      ),
    );
  }
}
