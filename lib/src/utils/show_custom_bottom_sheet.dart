import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> showCustomBottomSheet(
  BuildContext context, {
  required String title,
  required String subtitle,
  String? yesText,
  VoidCallback? onYesTap,
  String? noText,
  VoidCallback? onNoTap,
  List<Widget>? customButtons,
  bool isLoading = false,
}) {
  final theme = Theme.of(context);
  final textTheme = theme.extension<CustomTextTheme>()!;
  final colorTheme = theme.extension<CustomColor>()!;

  final buttons = [
    gapH20,
    Button(
      disabled: isLoading,
      isLoading: isLoading,
      text: yesText ?? 'Yes'.hardcoded,
      onTap: onYesTap,
    ),
    gapH32,
    Button(
      disabled: isLoading,
      isLoading: isLoading,
      onTap: onNoTap ??
          () {
            context.pop();
          },
      text: noText ?? 'No'.hardcoded,
      variant: ButtonVariant.inverted,
    ),
    gapH16
  ];

  return showModalBottomSheet(
    backgroundColor: colorTheme.white,
    useRootNavigator: true,
    useSafeArea: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    builder: (_) {
      return Padding(
        padding: EdgeInsets.all(Sizes.p28.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 5.0.h,
              width: 50.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: theme.primaryColor,
              ),
            ),
            gapH16,
            Text(
              title,
              style: textTheme.h3,
            ),
            gapH16,
            Text(
              subtitle,
              style: textTheme.body16Regular,
              textAlign: TextAlign.center,
            ),
            Column(
              children:
                  customButtons == null ? [...buttons] : [...customButtons],
            )
          ],
        ),
      );
    },
  );
}
