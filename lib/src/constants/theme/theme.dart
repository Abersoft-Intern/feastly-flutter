import 'package:flutter/material.dart';

import 'custom_color.dart';
import 'custom_text_theme.dart';

class FeastlyTheme {
  static ThemeData light() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: primaryColor,
      primarySwatch: primaryColor,
      brightness: Brightness.light,
      extensions: <ThemeExtension<dynamic>>[
        CustomTextTheme.light,
        CustomColor.light
      ],
    );
  }

  static ThemeData dark() {
    return ThemeData(
      primaryColor: primaryColor,
      primarySwatch: primaryColor,
      brightness: Brightness.dark,
      extensions: <ThemeExtension<dynamic>>[
        CustomTextTheme.dark,
        CustomColor.dark
      ],
    );
  }
}
