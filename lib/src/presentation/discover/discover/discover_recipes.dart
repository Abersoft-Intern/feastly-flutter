import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DiscoverRecipes extends StatelessWidget {
  const DiscoverRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    GoRouterState.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: Sizes.p16.h,
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              image: const DecorationImage(
                image: AssetImage("assets/images/pancakes.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Raspberry pancakes'.hardcoded,
                    style: textTheme.h2!.copyWith(color: colorTheme.white)),
                gapH4,
                RatingBar.builder(
                  initialRating: 3.0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.only(right: Sizes.p12.h),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                gapH16,
                Text(
                  'Cook time: 20 min'.hardcoded,
                  style:
                      textTheme.body16Bold!.copyWith(color: colorTheme.white),
                ),
              ],
            ),
          ),
        ),
        gapH28,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p36.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_delete,
                  color: colorTheme.white,
                  size: Sizes.p24.h,
                ),
                onTap: () {},
                variant: ActionButtonVariant.danger,
              ),
              gapW8,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_go_back,
                  color: colorTheme.yellow,
                  size: Sizes.p24.h,
                ),
                variant: ActionButtonVariant.neutral,
                onTap: () {},
              ),
              gapW8,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.heart_alt,
                  size: Sizes.p24.h,
                  color: colorTheme.white,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
