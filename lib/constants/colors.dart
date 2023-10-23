import 'package:flutter/material.dart';

class DarkThemeColour {
  Color primaryColour = const Color(0xff413132);
  Color accentColour = const Color(0xffFFD2BB);
}

class LightThemeColour {
  Color primaryColour = const Color(0xffDF0054);
  Color secondaryColour = const Color(0xffFF8B6A);
}

class Colour {
  static DarkThemeColour get darkThemeColour => DarkThemeColour();
  static LightThemeColour get lightThemeColour => LightThemeColour();
}
