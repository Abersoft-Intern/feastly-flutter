import 'package:feastly/src/presentation/discover/discover/discover_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'robots/robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Authentication', () {
    testWidgets('Sign in flow is correct', (tester) async {
      final r = Robot(tester);
      await r.pumpApp();

      if (r.auth.isLoggedIn()) {
        await r.bottomNav.goToProfile();
        await r.profile.logout();
      }

      await r.auth.goToLoginScreen();
      // Incorrect password/email
      await r.auth.enterEmail('wrong');
      await r.auth.enterPassword('wrong');
      await r.auth.tapLoginButton();
      r.auth.expectErrorAlert();
      await r.auth.closeAlert();

      await r.auth.enterEmail('');
      await r.auth.enterPassword('');

      // Correct password/email
      await r.auth.enterEmail('famsd');
      await r.auth.enterPassword('fams');
      await r.auth.tapLoginButton();

      await r.auth.enterOtp('4444');
      await r.auth.tapContinue();
      await r.auth.tapContinue();
      await r.auth.enterUsername('Farkdfk');
      await r.auth.tapContinue();

      await r.auth.tapContinue();
      await r.auth.tapContinue();
      await r.auth.tapContinue();
      await r.auth.tapContinue();
      await r.auth.tapContinue();
      await r.auth.tapContinue();

      final discoverScreen = find.byType(DiscoverScreen);
      expect(discoverScreen, findsOneWidget);
    });
  });
}
