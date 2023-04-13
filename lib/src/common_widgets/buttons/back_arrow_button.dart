import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkResponse(
      radius: 20.0,
      child: Icon(
        FeastlyIcon.arrow_back_green,
        size: 26.0,
        color: color ?? theme.primaryColor,
      ),
      onTap: () {
        context.pop();
      },
    );
  }
}
