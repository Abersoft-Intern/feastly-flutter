import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OtpSucceesScreen extends StatelessWidget {
  const OtpSucceesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
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
              SizedBox(
                height: 256.0.h,
              ),
              Text(
                'Verified!'.hardcoded,
                style: textTheme.h2!,
              ),
              gapH12,
              Text(
                'Congratulations you are now verified!'.hardcoded,
                style: textTheme.body16Regular!,
              ),
              SizedBox(
                height: 148.0.h,
              ),
              Button(
                text: 'Continue'.hardcoded,
                onTap: () {
                  context.pushNamed(RouteName.username.name);
                },
              ),
              gapH24,
            ],
          ),
        ),
      ),
    );
  }
}
