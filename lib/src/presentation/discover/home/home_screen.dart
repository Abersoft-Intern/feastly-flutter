import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var username = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color bgColor = theme.primaryColor;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gapH32,
            Text(
              'No more swipes!'.hardcoded,
              style: theme.extension<CustomTextTheme>()!.h3!,
            ),
            gapH24,
            SizedBox(
              height: 289,
              child: Stack(
                children: [
                  Positioned(
                  left: 0,
                  top: 20,
                  child: Image.asset(
                    'assets/images/pizza.png',
                  ),
                  ),
                  Positioned(
                  right: 0,
                  bottom: 50,
                  child: Image.asset(
                    'assets/images/hotdog.png'
                  ),
                  ),
                ],
              ),
              ),
              gapH24,
              SizedBox(
                  width: 315,
                  child: Text(
                    'You have reached the limit of swipes for today, come back tomorrow for more swipes!'.hardcoded,
                    style: theme.extension<CustomTextTheme>()!.body16Regular!,
                    textAlign: TextAlign.center,
                  ),
                ),
                gapH32,
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ActionButton(
                      icon:Icon(
                          FeastlyIcon.vector_3,
                          color: theme.extension<CustomColor>()!.red,
                      ),
                      variant:ActionButtonVariant.neutral,
                      onTap: () {},
                    ),
                    gapW32,
                    ActionButton(
                      icon:Icon(
                          FeastlyIcon.vector_3,
                          color: theme.extension<CustomColor>()!.yellow,
                          
                      ),
                      variant:ActionButtonVariant.neutral,
                      onTap: () {},
                    ),
                    gapW32,
                    ActionButton(
                      icon:Icon(
                          FeastlyIcon.vector_3,
                          color: theme.extension<CustomColor>()!.oldGreen,
                      ),
                      variant:ActionButtonVariant.neutral,
                      onTap: () {},
                    ),  
                    
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
