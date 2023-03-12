import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 289,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 20,
            child: Image.asset(
              'assets/images/sushi_roll.png',
            ),
          ),
          Positioned(
            right: 0,
            child: Image.asset('assets/images/burger.png'),
          ),
        ],
      ),
    );
  }
}
