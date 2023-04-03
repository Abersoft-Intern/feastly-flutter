import 'package:flutter/material.dart';

class CustomShadow extends ThemeExtension<CustomShadow> {
  const CustomShadow({
    required this.textShadow,
    required this.cardShadow,
  });

  final BoxShadow? textShadow;
  final BoxShadow? cardShadow;

  @override
  ThemeExtension<CustomShadow> copyWith({
    BoxShadow? textShadow,
    BoxShadow? cardShadow,
  }) {
    return CustomShadow(
      textShadow: textShadow ?? this.textShadow,
      cardShadow: cardShadow ?? this.cardShadow,
    );
  }

  @override
  ThemeExtension<CustomShadow> lerp(
      covariant ThemeExtension<CustomShadow>? other, double t) {
    if (other is! CustomShadow) {
      return this;
    }

    return CustomShadow(
      textShadow: BoxShadow.lerp(textShadow, other.textShadow, t),
      cardShadow: BoxShadow.lerp(cardShadow, other.cardShadow, t),
    );
  }

  // Theme definition
  static const light = CustomShadow(
    textShadow: BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.5),
      offset: Offset(0, 2.0),
      blurRadius: 4.0,
    ),
    cardShadow: BoxShadow(
      offset: Offset(0, 4.0),
      blurRadius: 20.0,
      color: Color.fromRGBO(0, 0, 0, 0.3),
    ),
  );

  static const dark = CustomShadow(
    textShadow: BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.5),
      offset: Offset(0, 2.0),
      blurRadius: 4.0,
    ),
    cardShadow: BoxShadow(
      offset: Offset(0, 4.0),
      blurRadius: 20.0,
      color: Color.fromRGBO(0, 0, 0, 0.3),
    ),
  );
}
