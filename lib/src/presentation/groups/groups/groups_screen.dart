import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/groups/groups_recipes_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});
  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  var selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gapH32,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
              child: MainHeader(
                selectedMenu: selectedMenu,
                onRecipesTap: () => setState(() => selectedMenu = 0),
                onRestaurantTap: () => setState(() => selectedMenu = 1),
                child: GestureDetector(
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
            gapH32,
            const Expanded(
              child: GroupsRecipesNone(),
            ),
            gapH32
          ],
        ),
      ),
    );
  }
}
