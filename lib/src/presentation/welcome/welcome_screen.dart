import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/welcome/welcome_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const WelcomeHeader(),
              Padding(
                padding: EdgeInsets.all(Sizes.p28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome,'.hardcoded,
                      style: theme.extension<CustomTextTheme>()!.h2!,
                    ),
                    gapH12,
                    Text(
                      'It has never been easier deciding \nwhat to eat!'
                          .hardcoded,
                      style: theme.extension<CustomTextTheme>()!.body16Regular!,
                    ),
                    gapH32,
                    Button(
                      onTap: () {
                        context.pushNamed(RouteName.register.name);
                      },
                      text: 'Register'.hardcoded,
                    ),
                    gapH24,
                    Button(
                      onTap: () {
                        context.pushNamed(RouteName.login.name);
                      },
                      text: 'Sign In'.hardcoded,
                      variant: ButtonVariant.outlined,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
