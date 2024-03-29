import 'package:feastly/src/common_widgets/scaffold_with_navbar.dart';
import 'package:feastly/src/presentation/auth/login/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_success_screen.dart';
import 'package:feastly/src/presentation/auth/register/register_screen.dart';
import 'package:feastly/src/presentation/auth/username/username_screen.dart';
import 'package:feastly/src/presentation/discover/discover/discover_screen.dart';
import 'package:feastly/src/presentation/discover/discover_setting/discover_setting_screen.dart';
import 'package:feastly/src/presentation/groups/group/group_screen.dart';
import 'package:feastly/src/presentation/groups/groups/groups_screen.dart';
import 'package:feastly/src/presentation/groups/join/join_group_screen.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_screen.dart';
import 'package:feastly/src/presentation/profile/profile_screen.dart';
import 'package:feastly/src/presentation/recipe/recipe_detail_screen.dart';
import 'package:feastly/src/presentation/saved/category/add/add_recipes_category_screen.dart';
import 'package:feastly/src/presentation/saved/category/list/recipes_category_screen.dart';
import 'package:feastly/src/presentation/saved/saved_screen.dart';
import 'package:feastly/src/presentation/welcome/welcome_screen.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'route_name.dart';

part 'app_route.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
GoRouter? _previousRouter;

final _publicRoutes = [
  '/',
  '/login',
  '/register',
  '/otp',
  '/otp/success',
  '/username',
  '/onboarding',
];

@riverpod
Raw<GoRouter> goRouter(GoRouterRef ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  final token = secureStorage.value?['token'];

  return _previousRouter = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    // Change default url here
    initialLocation: _previousRouter?.location,
    redirect: (context, state) {
      final isLoggedIn = token != null;
      if (_publicRoutes.contains(state.location) && isLoggedIn) {
        return '/discover';
      } else if (state.matchedLocation == '/groups/join') {
        return null;
      } else if (!_publicRoutes.contains(state.location) && !isLoggedIn) {
        return '/';
      }
      return null;
    },

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
              child: SavedScreen(),
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
        path: '/groups/join',
        name: RouteName.joinGroup.name,
        builder: (context, state) {
          final groupCode = state.queryParameters['code'];
          return JoinGroupScreen(groupCode);
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/groups/:groupId',
        name: RouteName.groupDetail.name,
        builder: (context, state) {
          final id = state.pathParameters['groupId']!;
          return GroupScreen(
            id: int.parse(id),
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/recipes/:id',
        name: RouteName.recipeDetail.name,
        builder: (context, state) {
          // ignore: unused_local_variable
          final recipeId = state.pathParameters['id'];
          return RecipeDetailScreen(
            recipeId: int.parse(recipeId!),
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/discover/setting',
        name: RouteName.discoverSetting.name,
        builder: (context, state) => const DiscoverSettingScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/saved/:categoryId',
        name: RouteName.savedRecipeCategory.name,
        builder: (context, state) {
          final categoryName = state.extra as String;
          final categoryId = state.pathParameters['categoryId']!;

          return RecipesCategoryScreen(
            id: int.parse(categoryId),
            name: categoryName,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/saved/:categoryId/add',
        name: RouteName.savedRecipeCategoryAdd.name,
        builder: (context, state) {
          final categoryId = state.pathParameters['categoryId']!;
          return AddRecipesCategoryScreen(
            categoryId: int.parse(categoryId),
          );
        },
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
}
