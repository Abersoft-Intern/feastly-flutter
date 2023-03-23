import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});
  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  var username = '';

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
              gapH48,
              Text(
                'Enter your name'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH8,
              Text(
                'Enter your name so that your friends know who you are.'
                    .hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              SizedBox(
                height: 104.0.h,
              ),
              Input(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                keyboardType: TextInputType.name,
                hintText: 'Username'.hardcoded,
                icon: Icon(
                  FeastlyIcon.icon_user,
                  color: theme.primaryColor,
                ),
              ),
              SizedBox(
                height: 198.0.h,
              ),
              Button(
                text: 'Continue'.hardcoded,
                onTap: username.isEmpty
                    ? null
                    : () {
                        context.pushNamed(
                          RouteName.onboarding.name,
                        );
                      },
                variant: username.isEmpty ? ButtonVariant.disabled : null,
              ),
              gapH24,
            ],
          ),
        ),
      ),
    );
  }
}
