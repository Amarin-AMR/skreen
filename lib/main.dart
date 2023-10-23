import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skreen/features/bottom_navigation/view/screen.dart';

Future<void> main() async {
  runApp(
    const ProviderScope(
      child: BottomNavigationBarApp(),
    ),
  );
}
