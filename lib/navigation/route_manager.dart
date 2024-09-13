import 'package:flutter/cupertino.dart';

class AppNav {
  static Future toPush(
    BuildContext context, {
    required Widget widget,
  }) =>
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => widget,
        ),
      );

  static Future toNamed(
    BuildContext context,
    String url, {
    Object? arguments,
  }) =>
      Navigator.pushNamed(
        context,
        url,
        arguments: arguments,
      );

  static Future toReplacementName(
    BuildContext context,
    String url, {
    Object? arguments,
    Object? result,
  }) =>
      Navigator.pushReplacementNamed(
        context,
        url,
        result: result,
        arguments: arguments,
      );

  static void close(BuildContext context, {Object? result, int count = 1}) {
    if (Navigator.canPop(context)) {
      for (var i = 0; i < count; i++) {
        Navigator.pop(context, result);
      }
    }
  }

  static void popUntilWithName(BuildContext context, String url) {
    Navigator.popUntil(
      context,
      ModalRoute.withName(url),
    );
  }

  static Future toNameAndRemoveUntil(
    BuildContext context,
    String url, {
    Object? arguments,
  }) =>
      Navigator.pushNamedAndRemoveUntil(
        context,
        url,
        (route) => false,
      );
}
