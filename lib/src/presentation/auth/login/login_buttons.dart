import 'package:feastly/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Image(
          image: AssetImage('assets/images/btn_Apple.png'),
        ),
        gapW12,
        Image(
          image: AssetImage('assets/images/btn_Facebook.png'),
        ),
        gapW12,
        Image(
          image: AssetImage('assets/images/btn_Google.png'),
        ),
      ],
    );
  }
}
