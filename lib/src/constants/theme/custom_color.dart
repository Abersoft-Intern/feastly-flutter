import 'package:flutter/material.dart';

const primaryColor = MaterialColor(0xFF59D1CA, {
  50: Color(0xFFF7FDFD),
  100: Color(0xFFEFFBFA),
  200: Color(0xFFD6F4F2),
  300: Color(0xFFBBEDEA),
  400: Color(0xFF8BDFDA),
  500: Color(0xFF59D1CA),
  600: Color(0xFF50BBB4),
  700: Color(0xFF367E7A),
  800: Color(0xFF295F5B),
  900: Color(0xFF1A3D3B),
});

class CustomColor extends ThemeExtension<CustomColor> {
  const CustomColor({
    required this.lightGrey,
    required this.textColor,
    required this.yellow,
    required this.oldGreen,
    required this.white,
    required this.black,
  });

  final Color? lightGrey;
  final Color? textColor;
  final Color? yellow;
  final Color? oldGreen;
  final Color? white;
  final Color? black;

  @override
  ThemeExtension<CustomColor> copyWith({
    Color? lightGrey,
    Color? textColor,
    Color? yellow,
    Color? oldGreen,
    Color? white,
    Color? black,
  }) {
    return CustomColor(
      lightGrey: lightGrey ?? this.lightGrey,
      textColor: textColor ?? this.textColor,
      yellow: yellow ?? this.yellow,
      oldGreen: oldGreen ?? this.oldGreen,
      white: white ?? this.white,
      black: black ?? this.black,
    );
  }

  @override
  ThemeExtension<CustomColor> lerp(
      covariant ThemeExtension<CustomColor>? other, double t) {
    if (other is! CustomColor) {
      return this;
    }

    return CustomColor(
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      yellow: Color.lerp(yellow, other.yellow, t),
      oldGreen: Color.lerp(oldGreen, other.oldGreen, t),
      white: Color.lerp(white, other.white, t),
      black: Color.lerp(black, other.black, t),
    );
  }

  // Theme definition
  static const light = CustomColor(
    lightGrey: Color(0xFFF4F1F1),
    textColor: Color(0xFF2E2E2E),
    yellow: Color(0xFFFDCD2A),
    oldGreen: Color(0xFF59D1CA),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
  );

  static const dark = CustomColor(
    lightGrey: Color(0xFFF4F1F1),
    textColor: Color(0xFF2E2E2E),
    yellow: Color(0xFFFDCD2A),
    oldGreen: Color(0xFF59D1CA),
    white: Color(0xFF000000),
    black: Color(0xFFFFFFFF),
  );
}
