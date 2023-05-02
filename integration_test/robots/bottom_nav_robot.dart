import 'package:feastly/src/common_widgets/scaffold_with_navbar.dart';
import 'package:flutter_test/flutter_test.dart';

class BottomNavRobot {
  BottomNavRobot(this.tester);

  final WidgetTester tester;

  Future<void> goToDiscover() async {
    final tab = find.byKey(ScaffoldWithNavbar.discoverTabKey);
    await tester.tap(tab);
    await tester.pumpAndSettle();
  }

  Future<void> goToProfile() async {
    final tab = find.byKey(ScaffoldWithNavbar.profileTabKey);
    await tester.tap(tab);
    await tester.pumpAndSettle();
  }

  Future<void> goToGroups() async {
    final tab = find.byKey(ScaffoldWithNavbar.groupsTabKey);
    await tester.tap(tab);
    await tester.pumpAndSettle();
  }

  Future<void> goToSaved() async {
    final tab = find.byKey(ScaffoldWithNavbar.savedTabKey);
    await tester.tap(tab);
    await tester.pumpAndSettle();
  }
}
