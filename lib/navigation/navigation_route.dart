import 'package:flutter/cupertino.dart';
import 'package:skreen/features/bottombar/screen.dart';
import 'package:skreen/features/helpcenter/screen.dart';

import 'navigation_constants.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic>? generateRoute(RouteSettings settings) {
    if (settings.name == null) return null;
    final uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case AppNavConstants.DEFALT:
        return normalNavigate(
          const HelpCenterScreen(),
          AppNavConstants.DEFALT,
          settings.arguments,
        );
      case AppNavConstants.BOTTOMAPPBAR:
        return normalNavigate(
          const BottomBarScreen(),
          AppNavConstants.BOTTOMAPPBAR,
          settings.arguments,
        );
      // case AppNavConstants.SPLASH:
      //   return normalNavigate(
      //     const SplashScreen(),
      //     AppNavConstants.SPLASH,
      //     settings.arguments,
      //   );
      // case AppNavConstants.DASHBOARD:
      //   return normalNavigate(
      //     const DashboardScreen(),
      //     AppNavConstants.DASHBOARD,
      //     settings.arguments,
      //   );
      // case AppNavConstants.SUM_WORK:
      //   return normalNavigate(
      //     const SumWorkScreen(),
      //     AppNavConstants.SUM_WORK,
      //     settings.arguments,
      //   );
      // case AppNavConstants.SPLASH:
      // return normalNavigate(
      //   const SplashScreen(),
      //   AppNavConstants.SPLASH,
      //   settings.arguments,
      // );

      default:
        return CupertinoPageRoute(
          builder: (context) => const Text("data"),
          // const NotFoundNavigationWidget(),
        );
    }
  }

  CupertinoPageRoute normalNavigate(
    Widget widget,
    String pageName,
    Object? arguments,
  ) {
    return CupertinoPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(
        name: pageName,
        arguments: arguments,
      ),
    );
  }
}
