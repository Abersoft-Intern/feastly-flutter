import 'package:feastly/src/common_widgets/scaffold_with_navbar_item.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavbar extends StatefulWidget {
  const ScaffoldWithNavbar({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<ScaffoldWithNavbar> createState() => _ScaffoldWithNavbarState();
}

class _ScaffoldWithNavbarState extends State<ScaffoldWithNavbar> {
  final _tabs = const [
    ScaffoldWithNavBarTabItem(
      initialLocation: '/home',
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.p4),
        child: Icon(FeastlyIcon.button_restaurant_inactive),
      ),
      label: 'Discover',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/saved',
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.p4),
        child: Icon(FeastlyIcon.heart_alt),
      ),
      label: 'Saved',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/groups',
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.p4),
        child: Icon(FeastlyIcon.users_alt),
      ),
      label: 'Groups',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/profile',
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.p4),
        child: Icon(FeastlyIcon.icon_user),
      ),
      label: 'Profile',
    ),
  ];

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    final index =
        _tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    return index < 0 ? 0 : index;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      context.go(_tabs[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.extension<CustomColor>()!;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs,
        elevation: 0,
        unselectedLabelStyle: theme
            .extension<CustomTextTheme>()!
            .bottomNav12!
            .copyWith(color: color.unselectedNav),
        selectedLabelStyle: theme.extension<CustomTextTheme>()!.bottomNav12,
        useLegacyColorScheme: false,
        showUnselectedLabels: true,
        unselectedItemColor: color.unselectedNav,
        iconSize: 20.0,
        selectedItemColor: _getItemColor(_currentIndex, context),
        currentIndex: _currentIndex,
        onTap: (index) => _onItemTapped(context, index),
      ),
    );
  }

  Color _getItemColor(int index, BuildContext context) {
    final color = Theme.of(context).extension<CustomColor>();
    final theme = Theme.of(context);
    if (index == 0) {
      return theme.primaryColor;
    }
    if (index == 1) {
      return color!.red!;
    }
    if (index == 2) {
      return theme.primaryColor;
    }
    return color!.blue!;
  }
}
