import 'package:feastly/src/common_widgets/scaffold_with_navbar.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/presentation/auth/login/login_screen.dart';
import 'package:feastly/src/presentation/auth/otp/otp_screen.dart';
import 'package:feastly/src/presentation/auth/username/username_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class AuthRobot {
  AuthRobot(this.tester);

  final WidgetTester tester;

  bool isLoggedIn() {
    final finder = find.byType(ScaffoldWithNavbar);
    final navbar = finder.evaluate();
    return navbar.isNotEmpty;
  }

  Future<void> goToSignInScreen() async {
    final button = find.text('Sign In');
    await tester.tap(button);
    await tester.pumpAndSettle();
    final signInScreen = find.byType(LoginScreen);
    expect(signInScreen, findsOneWidget);
  }

  Future<void> tapSignInButton() async {
    final button = find.text('Sign in');
    await tester.tap(button);
    await tester.pumpAndSettle();
  }

  Future<void> enterEmail(String email) async {
    final emailField = find.byKey(LoginScreen.emailKey);
    await tester.enterText(emailField, email);
  }

  Future<void> enterPassword(String password) async {
    final passwordField = find.byKey(LoginScreen.passwordKey);
    await tester.enterText(passwordField, password);
  }

  Future<void> enterUsername(String username) async {
    final usernameField = find.byKey(UsernameScreen.usernameKey);
    await tester.enterText(usernameField, username);
  }

  void expectErrorAlert() {
    final alert = find.byType(AlertDialog);
    expect(alert, findsOneWidget);
  }

  Future<void> closeAlert() async {
    final closeButton = find.byIcon(FeastlyIcon.button_close);
    await tester.tap(closeButton);
  }

  Future<void> enterOtp(String otp) async {
    final otpField = find.byKey(OtpScreen.otpKey);
    await tester.enterText(otpField, otp);
  }

  Future<void> tapContinue() async {
    final button = find.text('Continue');
    await tester.tap(button);
    await tester.pumpAndSettle();
  }
}
