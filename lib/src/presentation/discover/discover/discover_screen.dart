import 'package:feastly/src/common_widgets/buttons/small_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/discover/discover/discover_recipes_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
                padding: EdgeInsets.symmetric(horizontal: Sizes.p28.r),
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
                      onTap: () {
                        context.pushNamed(RouteName.discoverSetting.name);
                      },
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Icon(
                        FeastlyIcon.button_setting_mudassir,
                        color: theme.primaryColor,
                        size: Sizes.p32.h,
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
