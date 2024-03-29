import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingButtons extends ConsumerWidget {
  const OnboardingButtons({
    super.key,
    required GlobalKey<IntroductionScreenState> introKey,
    required bool isFirstItem,
  })  : _introKey = introKey,
        _isFirstItem = isFirstItem;

  final GlobalKey<IntroductionScreenState> _introKey;
  final bool _isFirstItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: !_isFirstItem,
          child: TextButton(
            onPressed: () {
              _introKey.currentState?.previous();
            },
            child: Row(
              children: [
                const Icon(
                  FeastlyIcon.button_arrow_left,
                  color: Color(0xFFE0E0E0),
                ),
                gapW8,
                Text(
                  'Previous'.hardcoded,
                  style:
                      theme.extension<CustomTextTheme>()!.body16Bold!.copyWith(
                            color: const Color(0xFFE0E0E0),
                          ),
                )
              ],
            ),
          ),
        ),
        Visibility(
          child: TextButton(
            onPressed: () {
              if (_introKey.currentState?.getCurrentPageNumber() == 4) {
                ref.invalidate(secureStorageProvider);
              } else {
                _introKey.currentState?.next();
              }
            },
            child: Row(
              children: [
                Text(
                  'Continue'.hardcoded,
                  style: theme
                      .extension<CustomTextTheme>()!
                      .body16Bold!
                      .copyWith(color: theme.primaryColor),
                ),
                gapW8,
                const Icon(FeastlyIcon.button_arrow_right),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
