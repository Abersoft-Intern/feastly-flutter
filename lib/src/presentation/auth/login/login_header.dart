import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Image.asset(
        'assets/images/burger.png',
      ),
    );
  }
}
