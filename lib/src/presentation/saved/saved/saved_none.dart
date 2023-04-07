import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/saved/saved_tile_button.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedNone extends StatelessWidget {
  const SavedNone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Column(
      children: [
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
                style: theme.extension<CustomTextTheme>()!.h3!,
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
                          text: 'Create group'.hardcoded,
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
                      style: theme
                          .extension<CustomTextTheme>()!
                          .body16Regular!
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
            children: const [
              SizedBox(
                width: Sizes.p28,
              ),
              SavedTileButton(label: 'Lunch Places'),
              SizedBox(
                width: Sizes.p12,
              ),
              SavedTileButton(label: 'Lunch Places'),
              SizedBox(
                width: Sizes.p12,
              ),
              SavedTileButton(label: 'Lunch Places'),
              SizedBox(
                width: Sizes.p12,
              ),
              SavedTileButton(label: 'Lunch Places'),
              SizedBox(
                width: Sizes.p12,
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
        gapH60,
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/Cake.png',
                  height: 194.0.r,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  'assets/images/Donut.png',
                  height: 189.0.r,
                ),
              ),
            ],
          ),
        ),
        gapH44,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
          child: Text(
            'Looks like you have not saved anything yet. Go back to Discover and like something!'
                .hardcoded,
            style: theme.extension<CustomTextTheme>()!.body16Regular!,
            textAlign: TextAlign.center,
          ),
        ),
        gapH64,
      ],
    );
  }
}
