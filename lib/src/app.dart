import 'package:feastly/src/constants/theme/theme.dart';
import 'package:feastly/src/navigation/app_route.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      theme: FeastlyTheme.light(),
      darkTheme: FeastlyTheme.light(),
    );
  }
}
