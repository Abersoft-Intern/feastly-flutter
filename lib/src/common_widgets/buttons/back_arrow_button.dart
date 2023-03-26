import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
      child: Icon(
        FeastlyIcon.arrow_back_green,
        size: 26.0,
        color: theme.primaryColor,
      ),
      onTap: () {
        context.pop();
      },
    );
  }
}
