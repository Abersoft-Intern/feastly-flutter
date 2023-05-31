import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/data/group_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/group/group_members.dart';
import 'package:feastly/src/presentation/groups/group/group_sheet_buttons.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class GroupScreen extends ConsumerWidget {
  const GroupScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    final group = ref.watch(groupDetailProvider(id));

    return Scaffold(
      body: SafeArea(
        child: group.when(
          data: (group) => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Sizes.p28.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      const BackArrowButton(),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          group.name,
                          style: textTheme.h3,
                        ),
                      )
                    ],
                  ),
                  gapH16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        group.code.replaceAllMapped(
                            RegExp(r".{3}"), (match) => "${match.group(0)} "),
                        style: textTheme.h2,
                      ),
                      gapW16,
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          FeastlyIcon.button_copy,
                          color: theme.primaryColor,
                          size: 20.0.h,
                        ),
                      )
                    ],
                  ),
                  gapH12,
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'This is the code for this Group, others can use this code to join this Group.',
                      style: textTheme.body16Regular,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  gapH24,
                  Divider(
                    color: colorTheme.lightGrey,
                    endIndent: 34,
                    indent: 34,
                  ),
                  gapH48,
                  Text(
                    'Group members'.hardcoded,
                    style: textTheme.h3,
                  ),
                  gapH28,
                  GroupMembers(group),
                  gapH36,
                  Button(
                    text: 'Invite friends'.hardcoded,
                    onTap: () {
                      Share.share('Join me on feastly');
                    },
                  ),
                  gapH24,
                  Button(
                    text: group.isCreator
                        ? 'Disband group'.hardcoded
                        : 'Leave group'.hardcoded,
                    variant: ButtonVariant.danger,
                    onTap: () {
                      showCustomBottomSheet(context,
                          title: group.isCreator
                              ? 'Disband Group'.hardcoded
                              : 'Leave group'.hardcoded,
                          customButtons: GroupSheetButtons(id),
                          subtitle: group.isCreator
                              ? 'Are you sure you want to disband this group?'
                              : 'Are you sure you want to leave the group?'
                                  .hardcoded);
                    },
                  )
                ],
              ),
            ),
          ),
          error: (error, stackTrace) => const Center(
            child: Text('Error'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
