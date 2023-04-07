import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/recipes_category/add_category_recipes_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoryRecipesScreen extends StatefulWidget {
  const AddCategoryRecipesScreen({super.key});
  @override
  State<AddCategoryRecipesScreen> createState() =>
      _AddCategoryRecipesScreenState();
}

class _AddCategoryRecipesScreenState extends State<AddCategoryRecipesScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
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
            const AddCategoryRecipesList()
          ],
        ),
      ),
    );
  }
}
