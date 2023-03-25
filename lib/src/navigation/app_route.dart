import 'package:feastly/src/common_widgets/scaffold_with_navbar.dart';
import 'package:feastly/src/presentation/auth/login/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_success_screen.dart';
import 'package:feastly/src/presentation/auth/register/register_screen.dart';
import 'package:feastly/src/presentation/auth/username/username_screen.dart';
import 'package:feastly/src/presentation/discover/discover/discover_screen.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_screen.dart';
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
  initialLocation: '/',
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
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: Text('Saved')),
          ),
          GoRoute(
            path: '/groups',
            name: RouteName.groups.name,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: Text('Groups')),
          ),
          GoRoute(
            path: '/profile',
            name: RouteName.profile.name,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: Text('Profile')),
          ),
        ]),
    GoRoute(
      path: '/discover/setting',
      name: RouteName.discoverSetting.name,
      builder: (context, state) => const WelcomeScreen(),
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
