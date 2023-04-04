import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/category/food_item.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFoodScreen extends StatefulWidget {
  const AddFoodScreen({super.key});
  @override
  State<AddFoodScreen> createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen> {
  
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
            gapH32,
            SingleChildScrollView(
              padding: const EdgeInsets.all(Sizes.p24),
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: Icon(
                  FeastlyIcon.arrow_back_green,
                  size: Sizes.backIconSize,
                  color: theme.primaryColor,
                ),
                onTap: () {
                  context.pop();
                },
              ),
            ),
            gapH16,
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
                    'Add food to list'.hardcoded,
                    style: textTheme.h3!,
                  ),
                ],
              ),
            ),
            gapH12,
            gapH28,
            Divider(
              color: colorTheme.lightGrey,
              height: 0,
              thickness: 1,
              indent: 34,
              endIndent: 34,
            ),
            const Expanded(
              child: FoodItem(),
            )
          ],
        ),
      ),
    );
  }
}
