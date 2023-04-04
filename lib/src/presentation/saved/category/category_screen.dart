import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/presentation/saved/category/category_none.dart';
import 'package:flutter/material.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:go_router/go_router.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
 
  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH32,
            SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
            child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: Icon(
                  FeastlyIcon.arrow_back_green,
                  size: Sizes.backIconSize,
                  color: theme.primaryColor,
                ),
                onTap: () {
                  context.pop();
                },
              ),
            ),
            
            const Expanded(
              child: CategoryNone(),
            )
          ],
        ),
      ),
    );
  }
}
