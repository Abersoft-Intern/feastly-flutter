import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';

class DiscoverRecipesNone extends StatelessWidget {
  const DiscoverRecipesNone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return Column(
      children: [
        Text(
          'No more swipes!'.hardcoded,
          style: textTheme.h3,
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 20,
                child: Image.asset(
                  scale: 1.5,
                  'assets/images/pizza.png',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 50,
                child: Image.asset(
                  scale: 1.5,
                  'assets/images/hotdog.png',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 315,
          child: Text(
            'You have reached the limit of swipes for today, come back tomorrow for more swipes!'
                .hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
        gapH32,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_delete,
                  color: colorTheme.white,
                  size: Sizes.p36,
                ),
                onTap: () {},
                variant: ActionButtonVariant.danger,
              ),
              gapW24,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_go_back,
                  color: colorTheme.yellow,
                  size: Sizes.p36,
                ),
                variant: ActionButtonVariant.neutral,
                onTap: () {},
              ),
              gapW24,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.heart_alt,
                  size: Sizes.p36,
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
