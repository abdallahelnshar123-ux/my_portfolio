import 'package:flutter/widgets.dart';

import 'breakpoints.dart';

class Responsive {
  const Responsive._();

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < Breakpoints.mobile;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return width >= Breakpoints.mobile && width < Breakpoints.tablet;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= Breakpoints.tablet;
  }
}
