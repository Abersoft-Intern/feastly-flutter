import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void showPrompt(BuildContext context, {required Widget child}) {
  final theme = Theme.of(context);
  showDialog(
    useRootNavigator: true,
    context: context,
    useSafeArea: true,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        contentPadding: EdgeInsets.all(Sizes.p16.h),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkResponse(
              radius: 20.0,
              onTap: () {
                context.pop();
              },
              child: Icon(
                FeastlyIcon.button_close,
                size: 24.0.h,
                color: theme.primaryColor,
              ),
            ),
            child
          ],
        ),
      );
    },
  );
}
