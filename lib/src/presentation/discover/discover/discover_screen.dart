import 'package:feastly/src/common_widgets/fade_indexed_stack.dart';
import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/discover/discover/recipes/discover_recipes.dart';
import 'package:feastly/src/presentation/discover/discover/restaurants/discover_restaurants.dart';
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
  var _selectedMenu = 0;

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
                child: MainHeader(
                  selectedMenu: _selectedMenu,
                  onRecipesTap: () => setState(() => _selectedMenu = 0),
                  onRestaurantTap: () => setState(() => _selectedMenu = 1),
                  child: InkWell(
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
                  ),
                ),
              ),
              gapH32,
              Expanded(
                child: FadeIndexedStack(
                  index: _selectedMenu,
                  children: const [
                    DiscoverRecipes(),
                    DiscoverRestaurants(),
                  ],
                ),
              ),
              gapH32
            ],
          ),
        ),
      ),
    );
  }
}
