import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/category/recipes/add/add_recipes_category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRecipesCategoryScreen extends StatefulWidget {
  const AddRecipesCategoryScreen({super.key});
  @override
  State<AddRecipesCategoryScreen> createState() =>
      _AddRecipesCategoryScreenState();
}

class _AddRecipesCategoryScreenState extends State<AddRecipesCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: Sizes.p28.h, top: Sizes.p28.h),
              child: const BackArrowButton(),
            ),
            gapH16,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add food to list'.hardcoded,
                    style: textTheme.h3!,
                  ),
                ],
              ),
            ),
            gapH8,
            const AddRecipesCategoryList()
          ],
        ),
      ),
    );
  }
}
