import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpSucceesScreen extends StatelessWidget {
  const OtpSucceesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  size: 26.0,
                  color: theme.primaryColor,
                ),
                onTap: () {
                  context.pop();
                },
              ),
              const SizedBox(
                height: 256.67,
              ),

              Text(
                'Verified!'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH12,
              Text(
                'Congratulations you are now verified!'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              gapH48,
              const SizedBox(
                height: 100.0,
              ),
              Button(
                text: 'Continue'.hardcoded,
                onTap: () {},
              ),
              gapH24,
              gapH16,
            ],
          ),
        ),
      ),
    );
  }
}
