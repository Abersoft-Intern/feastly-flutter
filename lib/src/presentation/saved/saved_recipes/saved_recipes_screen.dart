import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/saved/saved_recipes/saved_recipes_list.dart';
import 'package:feastly/src/presentation/saved/saved_tile_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SavedRecipesScreen extends StatefulWidget {
  const SavedRecipesScreen({super.key});
  @override
  State<SavedRecipesScreen> createState() => _SavedRecipesScreenState();
}

class _SavedRecipesScreenState extends State<SavedRecipesScreen> {
  final int _selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            children: [
              gapH32,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
                child: MainHeader(
                  selectedMenu: _selectedMenu,
                  onRecipesTap: () {},
                  onRestaurantTap: () {},
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
                      'My lists'.hardcoded,
                      style: textTheme.h3!,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add new'.hardcoded,
                            style: textTheme.body16Regular!
                                .copyWith(color: theme.primaryColor),
                          ),
                          gapW4,
                          Icon(
                            FeastlyIcon.uil_plus,
                            color: theme.primaryColor,
                            size: 16.0.h,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              gapH12,
              SizedBox(
                height: 73.0.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: Sizes.p28.h,
                    ),
                    SavedTileButton(
                      label: 'Lunch Places',
                      onTap: () {
                        context.pushNamed(
                          RouteName.savedRecipeCategory.name,
                          params: {'categoryId': '1'},
                        );
                      },
                    ),
                    SizedBox(
                      width: Sizes.p12.h,
                    ),
                    const SavedTileButton(label: 'Lunch Places'),
                    SizedBox(
                      width: Sizes.p12.h,
                    ),
                    const SavedTileButton(label: 'Lunch Places'),
                    SizedBox(
                      width: Sizes.p12.h,
                    ),
                    const SavedTileButton(label: 'Lunch Places'),
                    SizedBox(
                      width: Sizes.p28.h,
                    ),
                  ],
                ),
              ),
              gapH28,
              Divider(
                color: colorTheme.lightGrey,
                height: 0,
                thickness: 1,
                indent: 34,
                endIndent: 34,
              ),
              gapH32,
              // SizedBox(
              //   height: 430.h,
              //   child: const SavedNone(),
              // ),
              const SavedRecipesList()
            ],
          ),
        ),
      ),
    );
  }
}
