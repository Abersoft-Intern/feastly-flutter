import 'package:feastly/src/presentation/auth/login/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_success_screen.dart';
import 'package:feastly/src/presentation/auth/register/register_screen.dart';
import 'package:feastly/src/presentation/welcome/welcome_screen.dart';
import 'package:feastly/src/presentation/auth/username/screen_username.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_name.dart';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  // Change default url here
  initialLocation: '/username',
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
            path: 'username',
            name: RouteName.username.name,
            builder: (context, state) => const UsernameScreen(),
          ),
        ])
  ],
  errorBuilder: (context, state) => const Text('Not Found'),
);
