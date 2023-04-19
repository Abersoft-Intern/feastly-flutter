import 'package:feastly/src/constants/theme/custom_shadow.dart';
import 'package:flutter/material.dart';

import 'custom_color.dart';
import 'custom_text_theme.dart';

class FeastlyTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primaryColor,
        brightness: Brightness.light,
      ),
      extensions: <ThemeExtension<dynamic>>[
        CustomTextTheme.light,
        CustomColor.light,
        CustomShadow.light
      ],
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.black87,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primaryColor,
        brightness: Brightness.dark,
      ),
      extensions: <ThemeExtension<dynamic>>[
        CustomTextTheme.dark,
        CustomColor.dark,
        CustomShadow.dark
      ],
    );
  }
}
