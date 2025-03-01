import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:skreen/constants/theme.dart';
import 'package:skreen/features/bottombar/viewmodel.dart';

import 'package:skreen/features/gallery/viewmodel.dart';
import 'package:skreen/features/helpcenter/viewmodel.dart';
import 'package:skreen/features/map/viewmodel.dart';
import 'package:skreen/navigation/navigation_route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('th')],
      path: 'res/language',
      fallbackLocale: const Locale('th'),
      child: const MyApp(),
    ),
  );
}

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => GalleryScreenViewModel(context: context),
        ),
        ChangeNotifierProvider(
          create: (_) => HelpCenterViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => MapScreenViewModel(context: context),
        ),
        ChangeNotifierProvider(
          create: (_) => BottomNavigationBarViewmodel(context: context),
        )
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        themeMode: ThemeMode.system,
        theme: ThemeClass.darkTheme,
        darkTheme: ThemeClass.darkTheme,
        navigatorKey: _navigatorKey,
        onGenerateRoute: NavigationRoute.instance.generateRoute,
      ),
    );
  }
}
