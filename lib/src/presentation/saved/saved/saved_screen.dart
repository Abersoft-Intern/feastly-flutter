import 'package:feastly/src/common_widgets/main_header.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/presentation/saved/saved/saved_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});
  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  final int _selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            gapH32,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.p28.h),
              child: MainHeader(
                selectedMenu: _selectedMenu,
                onRecipesTap: () {},
                onRestaurantTap: () {},
              ),
            ),
            gapH44,
            const Expanded(
              child: SavedNone(),
            )
          ],
        ),
      ),
    );
  }
}
