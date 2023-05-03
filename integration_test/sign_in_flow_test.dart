import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_success_screen.dart';
import 'package:feastly/src/presentation/auth/username/username_screen.dart';
import 'package:feastly/src/presentation/discover/discover/discover_screen.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_screen.dart';
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

      await r.auth.goToSignInScreen();

      // Incorrect password/email
      await r.auth.enterEmail('wrong');
      await r.auth.enterPassword('wrong');
      await r.auth.tapSignInButton();
      r.auth.expectErrorAlert();
      await r.auth.closeAlert();

      await r.auth.enterEmail('');
      await r.auth.enterPassword('');

      // Correct password/email
      await r.auth.enterEmail('famsd');
      await r.auth.enterPassword('fams');
      await r.auth.tapSignInButton();

      // Make sure otp screen shows up
      final otpScreen = find.byType(OtpScreen);
      expect(otpScreen, findsOneWidget);

      await r.auth.enterOtp('4444');
      await r.auth.tapContinue();

      // Make sure "otp verified" screen shows up
      final otpSuccessScreen = find.byType(OtpSucceesScreen);
      expect(otpSuccessScreen, findsOneWidget);
      await r.auth.tapContinue();

      // Make sure username screen shows up
      final usernameScreen = find.byType(UsernameScreen);
      expect(usernameScreen, findsOneWidget);
      await r.auth.enterUsername('Farkdfk');
      await tester.pump();
      await r.auth.tapContinue();

      // Make sure onboarding screen shows up
      final onboardingScreen = find.byType(OnboardingScreen);
      expect(onboardingScreen, findsOneWidget);
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
