import 'dart:io';

import 'package:flutter/material.dart';
import 'package:skreen/base/base_viewmodel.dart';

class BottomNavigationViewModel extends BaseViewModel {
  int? _selectedIndex = 0;
  int? get selectIndex => _selectedIndex;

  final bool _cameraIsAvailable = Platform.isAndroid || Platform.isIOS;
  bool get cameraIsAvailable => _cameraIsAvailable;

  BottomNavigationViewModel({required BuildContext context});

  void onItemTapped(int index) {
    if (!cameraIsAvailable) {
      debugPrint("This is not supported on your current platform");
      return;
    }
    loading = true;
    _selectedIndex = index;
    loading = false;
  }
}
