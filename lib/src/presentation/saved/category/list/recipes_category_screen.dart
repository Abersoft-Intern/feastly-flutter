import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/saved/category/list/recipes_category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RecipesCategoryScreen extends StatefulWidget {
  const RecipesCategoryScreen({super.key});
  @override
  State<RecipesCategoryScreen> createState() => _RecipesCategoryScreenState();
}

class _RecipesCategoryScreenState extends State<RecipesCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      'Breakfast'.hardcoded,
                      style: textTheme.h3!,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(RouteName.savedRecipeCategoryAdd.name,
                            pathParameters: {'categoryId': '1'});
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
              gapH8,
              const RecipesCategoryList()
            ],
          ),
        ),
      ),
    );
  }
}
