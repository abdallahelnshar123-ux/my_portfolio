import 'package:flutter/material.dart';

import 'breakpoints.dart';
import 'responsive_theme.dart';
import 'responsive_values.dart';

class Responsive {
  const Responsive._();

  static ResponsiveTheme of(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    switch (Breakpoints.fromWidth(width)) {
      case DeviceType.mobile:
        return ResponsiveValues.mobile;

      case DeviceType.tablet:
        return ResponsiveValues.tablet;

      case DeviceType.desktop:
        return ResponsiveValues.desktop;
    }
  }

  static DeviceType device(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Breakpoints.fromWidth(width);
  }

  static bool isMobile(BuildContext context) =>
      device(context) == DeviceType.mobile;

  static bool isTablet(BuildContext context) =>
      device(context) == DeviceType.tablet;

  static bool isDesktop(BuildContext context) =>
      device(context) == DeviceType.desktop;
}
