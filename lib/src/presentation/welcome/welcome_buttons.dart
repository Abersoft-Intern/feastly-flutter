import 'package:feastly/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('assets/images/btn_Apple.png'),
        ),
        gapW24,
        const Image(
          image: AssetImage('assets/images/btn_Facebook.png'),
        ),
        gapW24,
        const Image(
          image: AssetImage('assets/images/btn_Google.png'),
        ),
      ],
    );
  }
}
