import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/data/saved_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/controllers/add_category_controller.dart';
import 'package:feastly/src/presentation/saved/saved_recipes_list.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SavedScreen extends ConsumerStatefulWidget {
  const SavedScreen({
    super.key,
  });

  @override
  ConsumerState<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends ConsumerState<SavedScreen> {
  final _nameController = TextEditingController();

  String get name => _nameController.text;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    final controller = ref.watch(addCategoryControllerProvider);

    ref.listen(addCategoryControllerProvider, (_, state) {
      if (!state.isLoading && state.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.error.toString()),
        ));
      }

      if (!state.isLoading && !state.hasError) {
        context.pop();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 2),
          content: Text('Category successfully saved'.hardcoded),
        ));
        ref.invalidate(userCategoriesProvider);
        _nameController.clear();
      }
    });

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
                              Input(
                                keyboardType: TextInputType.text,
                                controller: _nameController,
                              ),
                              gapH40,
                              Button(
                                disabled: controller.isLoading,
                                isLoading: controller.isLoading,
                                text: 'Save new list'.hardcoded,
                                onTap: () {
                                  ref
                                      .read(addCategoryControllerProvider
                                          .notifier)
                                      .addCategory(name);
                                },
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
              const SavedRecipesList(),
            ],
          ),
        ),
      ),
    );
  }
}
