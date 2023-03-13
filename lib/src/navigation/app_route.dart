import 'package:feastly/src/presentation/auth/login/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_success_screen.dart';
import 'package:feastly/src/presentation/auth/register/register_screen.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_screen.dart';
import 'package:feastly/src/presentation/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_name.dart';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  // Change default url here
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
        routes: [
          GoRoute(
            path: 'welcome',
            name: RouteName.welcome.name,
            builder: (context, state) => const WelcomeScreen(),
          ),
          GoRoute(
            path: 'login',
            name: RouteName.login.name,
            builder: (context, state) => const LoginScreen(),
          ),
          GoRoute(
            path: 'register',
            name: RouteName.register.name,
            builder: (context, state) => const RegisterScreen(),
          ),
          GoRoute(
            path: 'otp',
            name: RouteName.otp.name,
            builder: (context, state) => const OtpScreen(),
            routes: [
              GoRoute(
                path: 'success',
                name: RouteName.otpSuccess.name,
                builder: (context, state) => const OtpSucceesScreen(),
              )
            ],
          ),
          GoRoute(
            path: 'onboarding',
            name: RouteName.onboarding.name,
            builder: (context, state) => const OnboardingScreen(),
          ),
        ])
  ],
  errorBuilder: (context, state) => const Text('Not Found'),
);
