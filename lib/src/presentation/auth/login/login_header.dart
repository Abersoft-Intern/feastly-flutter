import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Image.asset(
        'assets/images/burger.png',
        height: 341.0.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
