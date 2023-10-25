import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:skreen/constants/theme.dart';

import 'package:skreen/features/bottom_navigation/viewmodel.dart';
import 'package:skreen/features/helpcenter/screen.dart';

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => BottomNavigationViewModel(context: context)),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        themeMode: ThemeMode.system,
        theme: ThemeClass.darkTheme,
        darkTheme: ThemeClass.darkTheme,
        home: const Intro(),
      ),
    );
  }
}
