import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/saved_list/saved_recipes_list.dart';
import 'package:feastly/src/presentation/saved/saved_list/saved_restaurants_list.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({
    super.key,
  });

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  var _selectedMenu = 0;

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
                  onRecipesTap: () {
                    setState(() {
                      _selectedMenu = 0;
                    });
                  },
                  onRestaurantTap: () {
                    setState(() {
                      _selectedMenu = 1;
                    });
                  },
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
                      onTap: () {
                        showPrompt(
                          context,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Create a new list'.hardcoded,
                                  style: textTheme.h3,
                                ),
                              ),
                              gapH4,
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Create a new list so you can \norganize your foods.'
                                      .hardcoded,
                                  style: textTheme.body16Regular,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              gapH20,
                              const Input(keyboardType: TextInputType.text),
                              gapH40,
                              Button(
                                text: 'Save new list'.hardcoded,
                                onTap: () {},
                              ),
                              gapH12
                            ],
                          ),
                        );
                      },
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
              FadeIndexedStack(
                index: _selectedMenu,
                children: const [
                  SavedRecipesList(),
                  SavedRestaurantsList(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
