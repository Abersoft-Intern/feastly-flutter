import 'package:feastly/src/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'auth_robot.dart';
import 'bottom_nav_robot.dart';
import 'profile_robot.dart';

class Robot {
  Robot(this.tester)
      : bottomNav = BottomNavRobot(tester),
        auth = AuthRobot(tester),
        profile = ProfileRobot(tester);

  final WidgetTester tester;
  final BottomNavRobot bottomNav;
  final ProfileRobot profile;
  final AuthRobot auth;

  Future<void> pumpApp() async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MyApp(),
      ),
    );

    await tester.pumpAndSettle();
  }
}
