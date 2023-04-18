import 'package:feastly/src/constants/theme/theme.dart';
import 'package:feastly/src/navigation/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (_, __) => KeyboardDismisser(
        child: MaterialApp.router(
          routerConfig: goRouter,
          debugShowCheckedModeBanner: false,
          restorationScopeId: 'app',
          theme: FeastlyTheme.light(),
          darkTheme: FeastlyTheme.light(),
        ),
      ),
    );
  }
}
