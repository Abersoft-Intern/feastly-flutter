import 'package:feastly/src/common_widgets/scaffold_with_navbar.dart';
import 'package:feastly/src/presentation/auth/login/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_success_screen.dart';
import 'package:feastly/src/presentation/auth/register/register_screen.dart';
import 'package:feastly/src/presentation/auth/username/username_screen.dart';
import 'package:feastly/src/presentation/discover/discover/discover_screen.dart';
import 'package:feastly/src/presentation/discover/discover_setting/discover_setting_screen.dart';
import 'package:feastly/src/presentation/groups/groups/groups_screen.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_screen.dart';
import 'package:feastly/src/presentation/profile/profile_screen.dart';
import 'package:feastly/src/presentation/recipe/recipe_detail_screen.dart';
import 'package:feastly/src/presentation/saved/category/add_food_screen.dart';
import 'package:feastly/src/presentation/saved/category/category_screen.dart';
import 'package:feastly/src/presentation/saved/saved_recipes/saved_recipes_screen.dart';
import 'package:feastly/src/presentation/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_name.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  // Change default url here
  initialLocation: '/saved',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNavbar(child: child);
      },
      routes: [
        GoRoute(
          path: '/discover',
          name: RouteName.discover.name,
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: DiscoverScreen(),
          ),
        ),
        GoRoute(
          path: '/saved',
          name: RouteName.saved.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SavedRecipesScreen(),
          ),
        ),
        GoRoute(
          path: '/groups',
          name: RouteName.groups.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: GroupsScreen(),
          ),
        ),
        GoRoute(
          path: '/profile',
          name: RouteName.profile.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfileScreen(),
          ),
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/recipes/:id',
      name: RouteName.recipeDetail.name,
      builder: (context, state) {
        // ignore: unused_local_variable
        final recipeId = state.params['id'];
        return const RecipeDetailScreen();
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/discover/setting',
      name: RouteName.discoverSetting.name,
      builder: (context, state) => const DiscoverSettingScreen(),
    ),
    GoRoute(
      path: '/saved/category',
      name: RouteName.category.name,
      builder: (context, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: '/saved/addfood',
      name: RouteName.addFood.name,
      builder: (context, state) => const AddFoodScreen(),
    ),
    GoRoute(
      path: '/',
      name: RouteName.welcome.name,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/login',
      name: RouteName.login.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: RouteName.register.name,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/otp',
      name: RouteName.otp.name,
      builder: (context, state) => const OtpScreen(),
      routes: [
        GoRoute(
          path: 'success',
          name: RouteName.otpSuccess.name,
          builder: (context, state) => const OtpSucceesScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/username',
      name: RouteName.username.name,
      builder: (context, state) => const UsernameScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      name: RouteName.onboarding.name,
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
  errorBuilder: (context, state) => const Text('Not Found'),
);
