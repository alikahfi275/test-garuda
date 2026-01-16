import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xfff25626);

  static const Color background = Color(0xff0d1926);

  static const Color accentColor = Color(0xff8eeb3b);

  static const Color black = Color(0xff0d0d0d);
  static const Color darkGlay = Color(0xFF333333);
  static const Color clay = Color(0xFF666666);
  static const Color concrete = Color(0xFF999999);
  static const Color stone = Color(0xFFCCCCCC);
  static const Color stoneDot = Color.fromARGB(204, 204, 204, 1000);
  static const Color smoke = Color(0xFFF2F2F2);
  static const Color white = Color(0xFFFFFFFF);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primaryColor: primary,

    colorScheme: const ColorScheme.dark(
      primary: primary,
      onPrimary: white,
      secondary: clay,
      onSecondary: white,
      surface: accentColor,
      tertiaryContainer: black,
      tertiary: darkGlay,
      onTertiary: concrete,
      tertiaryFixed: stone,
      tertiaryFixedDim: smoke,
      onTertiaryFixed: stoneDot,
    ),
  );
}
