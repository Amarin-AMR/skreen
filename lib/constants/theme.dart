import 'package:flutter/material.dart';
import 'colors.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colour.lightThemeColour.primaryColour,
      secondary: Colour.lightThemeColour.secondaryColour,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colour.darkThemeColour.primaryColour,
      secondary: Colour.darkThemeColour.accentColour,
    ),
  );
}
