import 'package:feastly/src/constants/theme/theme.dart';
import 'package:feastly/src/navigation/navigation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      restorationScopeId: 'app',
      theme: FeastlyTheme.light(),
      darkTheme: FeastlyTheme.dark(),
    );
  }
}
