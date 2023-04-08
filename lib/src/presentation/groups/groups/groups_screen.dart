import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
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
              Divider(
                color: colorTheme.lightGrey,
                height: 0,
                thickness: 1,
                indent: 34,
                endIndent: 34,
              ),
              gapH12,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Groups'.hardcoded,
                      style: theme.extension<CustomTextTheme>()!.h3!,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Group'.hardcoded,
                        style: theme
                            .extension<CustomTextTheme>()!
                            .body16Bold!
                            .copyWith(color: theme.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              gapH16,
              SizedBox(
                height: 63.0.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {},
                      child: Column(
                        children: [
                          Ink(
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
                          gapH4,
                          Text(
                            'New Group'.hardcoded,
                            style: textTheme.bold12!
                                .copyWith(color: theme.primaryColor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 42.0.h,
                      width: 42.0.h,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 2,
                            child: Ink(
                              color: theme.primaryColor,
                              width: 20.0,
                              height: 20.0,
                            ),
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              gapH24,
              Divider(
                color: colorTheme.lightGrey,
                height: 0,
                thickness: 1,
                indent: 34,
                endIndent: 34,
              ),
              gapH32,
            ],
          ),
        ),
      ),
    );
  }
}
