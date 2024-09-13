import 'package:flutter/material.dart';

const _mobile = 'mobile';
const _tablet = 'tablet';
const _laptop = 'laptop';

enum DeviceScreen { mobile, tablet, laptop }

extension DeviceScreenHelper on DeviceScreen {
  bool get isMobile => this == DeviceScreen.mobile;

  bool get isTablet => this == DeviceScreen.tablet;

  bool get isLaptop => this == DeviceScreen.laptop;
}

extension DeviceScreenText on DeviceScreen {
  String get toRawValue {
    switch (this) {
      case DeviceScreen.mobile:
        return _mobile;

      case DeviceScreen.tablet:
        return _tablet;

      case DeviceScreen.laptop:
        return _laptop;
    }
  }
}

extension BuildContextProvide on BuildContext {
  DeviceScreen screenSize() {
    var width = MediaQuery.of(this).size.width;
    if (width >= 1240) {
      return DeviceScreen.laptop;
    } else if (width >= 600) {
      return DeviceScreen.tablet;
    }
    return DeviceScreen.mobile;
  }
}
