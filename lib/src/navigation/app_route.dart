import 'package:feastly/src/presentation/auth/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp_screen.dart';
import 'package:feastly/src/presentation/auth/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_name.dart';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  // Change default url here
  initialLocation: '/register',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
        routes: [
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
          ),
        ])
  ],
  errorBuilder: (context, state) => const Text('Not Found'),
);
