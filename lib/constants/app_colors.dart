import 'package:flutter/material.dart';

class AppColors {
  AppColors._init();
  static final AppColors _instance = AppColors._init();
  static AppColors get instance => _instance;

  bool light(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.light;

  Color primary(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF35B288);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color darkMode = const Color(0xff282a36);

  Color lightMode = const Color(0xFFffffff);

  Color black(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff282a36);
    return convertTheme
        ? (light(context)
            ? color
            : white(
                context,
                convertTheme: false,
              ))
        : color;
  }

  Color white(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFffffff);
    return convertTheme
        ? (light(context)
            ? color
            : black(
                context,
                convertTheme: false,
              ))
        : color;
  }

  Color brown(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFa87e6f);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color dimGray(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF676870);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color darkGrey(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF979797);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color darkgrey(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF646464);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color disable(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFE0E6F1);
    return convertTheme
        ? (light(context) ? color : greyTurquoise(context, convertTheme: false))
        : color;
  }

  Color green(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF35B288);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color pastelGreen(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFF4FCF8);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color seaGreen(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF549C7A);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color gray(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFa5a6ae);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color grey(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFFAFAFA);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color greylight(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFF5F5F5);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color greyBlond(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFE0E6F1);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color greyCharcoal(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFDADADA);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color greyTurquoise(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFF949FB6);
    return convertTheme
        ? (light(context)
            ? color
            : white(
                context,
                convertTheme: false,
              ))
        : color;
  }

  Color gainsBoro(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFD9D9D9);
    return convertTheme
        ? (light(context)
            ? color
            : white(
                context,
                convertTheme: false,
              ))
        : color;
  }

  Color lightGray(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFCCCCCC);
    return convertTheme
        ? (light(context)
            ? color
            : white(
                context,
                convertTheme: false,
              ))
        : color;
  }

  Color grayAlabaster(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFFAFAFA);
    return convertTheme
        ? (light(context)
            ? color
            : black(
                context,
                convertTheme: false,
              ))
        : color;
  }

  Color red(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFFE3326);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color melon(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFEF4036);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color pink(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFEB4985);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color lightPink(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFFDEDF3);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color brickPink(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xFFBE3B6B);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color teal(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff007486);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color skyBlue(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xffF0F5FD);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color dodgerBlue(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff003A7D);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color deepskyblue(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff37B6FF);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color ceruleanBlue(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff0060D1);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color greenTurqoise(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff35B288);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color greenForest(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xff58B347);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color mintCream(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xffEDF6F1);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color coral(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xffFF7D3E);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color orange(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xffFF8E25);
    return convertTheme ? (light(context) ? color : color) : color;
  }

  Color salmonRose(BuildContext context, {bool convertTheme = true}) {
    const color = Color(0xffFABC3F);
    return convertTheme ? (light(context) ? color : color) : color;
  }
}
