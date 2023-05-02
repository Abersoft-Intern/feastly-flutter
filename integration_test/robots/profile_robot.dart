import 'package:flutter_test/flutter_test.dart';

class ProfileRobot {
  ProfileRobot(this.tester);

  final WidgetTester tester;

  Future<void> logout() async {
    final button = find.text('Logout');
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pumpAndSettle();

    final yesButton = find.text('Yes');
    await tester.tap(yesButton);
    await tester.pumpAndSettle();
  }
}
