import 'package:flutter/material.dart';
import 'package:skreen/base/base_viewmodel.dart';

class BottomNavigationBarViewmodel extends BaseViewModel {
  BottomNavigationBarViewmodel({required BuildContext context});

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
