import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 20,
            height: 269.0.h,
            child: Image.asset(
              'assets/images/sushi_roll.png',
            ),
          ),
          Positioned(
            right: 0,
            height: 341.0.h,
            child: Image.asset('assets/images/burger.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
