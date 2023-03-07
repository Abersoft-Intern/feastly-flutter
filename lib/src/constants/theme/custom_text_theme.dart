import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  const CustomTextTheme({
    this.h1,
    this.h2,
    this.h3,
    this.h318,
    this.body16Regular,
    this.body16Bold,
    this.body14Bold,
    this.bold12,
    this.bottomNav12,
  });

  final TextStyle? h1;
  final TextStyle? h2;
  final TextStyle? h3;
  final TextStyle? h318;
  final TextStyle? body16Regular;
  final TextStyle? body16Bold;
  final TextStyle? body14Bold;
  final TextStyle? bold12;
  final TextStyle? bottomNav12;

  @override
  ThemeExtension<CustomTextTheme> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h318,
    TextStyle? body16Regular,
    TextStyle? body16Bold,
    TextStyle? body14Bold,
    TextStyle? bold12,
    TextStyle? bottomNav12,
  }) {
    return CustomTextTheme(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h318: h318 ?? this.h318,
      body16Regular: body16Regular ?? this.body16Regular,
      body16Bold: body16Bold ?? this.body16Bold,
      body14Bold: body14Bold ?? this.body14Bold,
      bold12: bold12 ?? this.bold12,
      bottomNav12: bottomNav12 ?? this.bottomNav12,
    );
  }

  @override
  ThemeExtension<CustomTextTheme> lerp(
      covariant ThemeExtension<CustomTextTheme>? other, double t) {
    if (other is! CustomTextTheme) {
      return this;
    }

    return CustomTextTheme(
      h1: TextStyle.lerp(h1, other.h1, t),
      h2: TextStyle.lerp(h2, other.h2, t),
      h3: TextStyle.lerp(h3, other.h3, t),
      h318: TextStyle.lerp(h318, other.h318, t),
      body16Regular: TextStyle.lerp(body16Regular, other.body16Regular, t),
      body16Bold: TextStyle.lerp(body16Bold, other.body16Bold, t),
      body14Bold: TextStyle.lerp(body14Bold, other.body14Bold, t),
      bold12: TextStyle.lerp(bold12, other.bold12, t),
      bottomNav12: TextStyle.lerp(bottomNav12, other.bottomNav12, t),
    );
  }

  // Theme definition
  static final light = CustomTextTheme(
    h1: GoogleFonts.nunito(
      fontSize: 52.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    h2: GoogleFonts.nunito(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    h3: GoogleFonts.nunito(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    h318: GoogleFonts.nunito(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    body16Regular: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    body16Bold: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    body14Bold: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bold12: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bottomNav12: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );
  // the dark theme
  static final dark = CustomTextTheme(
    h1: GoogleFonts.nunito(
      fontSize: 52.0,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    ),
    h2: GoogleFonts.nunito(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    h3: GoogleFonts.nunito(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    h318: GoogleFonts.nunito(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    body16Regular: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    body16Bold: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    body14Bold: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bold12: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bottomNav12: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  );
}
