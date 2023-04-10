import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/groups/groups_list.dart';
import 'package:feastly/src/presentation/groups/groups/groups_recipes.dart';
import 'package:feastly/src/presentation/groups/groups/groups_restaurants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});
  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  var _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH32,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
                child: MainHeader(
                  selectedMenu: _selectedMenu,
                  onRecipesTap: () => setState(() => _selectedMenu = 0),
                  onRestaurantTap: () => setState(() => _selectedMenu = 1),
                  child: InkResponse(
                    radius: 35.0,
                    onTap: () {},
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
                      onTap: () {},
                      child: Text(
                        'Edit Group'.hardcoded,
                        style: textTheme.body16Bold!
                            .copyWith(color: theme.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              gapH16,
              const GroupsList(),
              gapH24,
              Divider(
                color: colorTheme.lightGrey,
                height: 0,
                thickness: 1,
                indent: 34,
                endIndent: 34,
              ),
              gapH32,
              FadeIndexedStack(
                index: _selectedMenu,
                children: const [
                  GroupsRecipes(),
                  GroupsRestaurants(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
