import 'package:feastly/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage('assets/images/btn_Apple.png'),
          height: 38.0.h,
        ),
        gapW24,
        Image(
          image: const AssetImage('assets/images/btn_Facebook.png'),
          height: 38.0.h,
        ),
        gapW24,
        Image(
          image: const AssetImage('assets/images/btn_Google.png'),
          height: 38.0.h,
        ),
      ],
    );
  }
}
