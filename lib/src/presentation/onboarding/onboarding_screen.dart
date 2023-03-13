import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_buttons.dart';
import 'package:feastly/src/presentation/onboarding/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  var _isFirstItem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.p24),
          child: Column(
            children: [
              Expanded(
                child: IntroductionScreen(
                  key: _introKey,
                  controlsPosition: const Position(left: 0, right: 0, top: 0),
                  showBackButton: false,
                  showDoneButton: false,
                  showNextButton: false,
                  bodyPadding: const EdgeInsets.symmetric(vertical: 30.0),
                  dotsDecorator: DotsDecorator(
                    size: const Size.square(10.0),
                    activeSize: const Size(20.0, 10.0),
                    activeColor: Theme.of(context).primaryColor,
                    color: const Color(0xFFE0E0E0),
                    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onChange: (page) {
                    setState(() {
                      if (page == 0) {
                        _isFirstItem = true;
                      } else {
                        _isFirstItem = false;
                      }
                    });
                  },
                  rawPages: [
                    OnboardingItem(
                      imgPath: 'assets/images/onboarding_1.png',
                      title:
                          'Swipe Right or press the heart button on the food you like.'
                              .hardcoded,
                              
                    ),
                    OnboardingItem(
                      imgPath: 'assets/images/onBoarding_2.png',
                      title:
                          'Tap a food you want to know how to cook.'.hardcoded,
                    ),
                    OnboardingItem(
                      imgPath: 'assets/images/onBoarding_3.png',
                      title:
                          'Toggle between seeing restaurants in your area or recipes.'
                              .hardcoded,
                    ),
                    OnboardingItem(
                      imgPath: 'assets/images/onBoarding_4.png',
                      title: 'All the food you like end up here.'.hardcoded,
                    ),
                    OnboardingItem(
                      imgPath: 'assets/images/onBoarding_5.png',
                      title:
                          'Create a Group to swipe with your friends.'.hardcoded,
                    ),
                  ],
                ),
              ),
              OnboardingButtons(introKey: _introKey, isFirstItem: _isFirstItem)
            ],
          ),
        ),
      ),
    );
  }
}
