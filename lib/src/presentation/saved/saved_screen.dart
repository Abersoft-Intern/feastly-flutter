import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/prompts/saved_prompt.dart';
import 'package:feastly/src/presentation/saved/saved_recipes_list.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedScreen extends ConsumerStatefulWidget {
  const SavedScreen({
    super.key,
  });

  @override
  ConsumerState<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends ConsumerState<SavedScreen> {
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
                child: const MainHeader(),
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
                          child: SavedPrompt(context),
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
              const SavedRecipesList(),
            ],
          ),
        ),
      ),
    );
  }
}
