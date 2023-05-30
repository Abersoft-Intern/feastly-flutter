import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/common_widgets/shimmer.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/groups/groups/controllers/groups_state.dart';
import 'package:feastly/src/presentation/groups/groups/group_list.dart';
import 'package:feastly/src/presentation/groups/groups/group_recipes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GroupsScreen extends ConsumerWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;

    final activeGroup = ref.watch(activeGroupProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Shimmer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                gapH32,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
                  child: MainHeader(
                    child: InkResponse(
                      radius: 35.0,
                      onTap: () {
                        context.pushNamed(RouteName.joinGroup.name);
                      },
                      child: Column(
                        children: [
                          Icon(
                            FeastlyIcon.user_plus,
                            color: theme.primaryColor,
                            size: Sizes.p20.h,
                          ),
                          Text(
                            'Join Group'.hardcoded,
                            style: textTheme.bold12!
                                .copyWith(color: theme.primaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                gapH44,
                Divider(
                  color: colorTheme.lightGrey,
                  height: 0,
                  thickness: 1,
                  indent: 34,
                  endIndent: 34,
                ),
                gapH12,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Groups'.hardcoded,
                        style: textTheme.h3!,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (activeGroup != null) {
                            context.pushNamed(
                              RouteName.groupDetail.name,
                              pathParameters: {
                                'groupId': activeGroup.id.toString()
                              },
                            );
                          } else {
                            null;
                          }
                        },
                        child: Text(
                          'Edit Group'.hardcoded,
                          style: textTheme.body16Bold!.copyWith(
                              color: activeGroup != null
                                  ? theme.primaryColor
                                  : colorTheme.unselectedNav),
                        ),
                      ),
                    ],
                  ),
                ),
                gapH16,
                const GroupList(),
                gapH24,
                Divider(
                  color: colorTheme.lightGrey,
                  height: 0,
                  thickness: 1,
                  indent: 34,
                  endIndent: 34,
                ),
                gapH32,
                const GroupRecipes(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
