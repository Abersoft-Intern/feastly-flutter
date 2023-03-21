import 'package:feastly/src/common_widgets/buttons/small_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/discover/discover/discover_recipes_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});
  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  var selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p28),
                child: Row(
                  children: [
                    SmallButton(
                      'Recipes'.hardcoded,
                      isSelected: selectedMenu == 0,
                      icon: FeastlyIcon.button_recipe_inactive,
                      onTap: () => setState(() => selectedMenu = 0),
                    ),
                    SmallButton(
                      'Restaurant'.hardcoded,
                      icon: FeastlyIcon.button_restaurant_inactive,
                      isSelected: selectedMenu == 1,
                      onTap: () => setState(() => selectedMenu = 1),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      child: Icon(
                        FeastlyIcon.button_setting_mudassir,
                        color: theme.primaryColor,
                        size: Sizes.p40,
                      ),
                    )
                  ],
                ),
              ),
              gapH32,
              const Expanded(
                child: DiscoverRecipesNone(),
              ),
              gapH32
            ],
          ),
        ),
      ),
    );
  }
}
