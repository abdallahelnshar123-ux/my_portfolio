enum DeviceType { mobile, tablet, desktop }

class Breakpoints {
  static const mobile = 600.0;
  static const tablet = 1024.0;

  static DeviceType fromWidth(double width) {
    if (width < mobile) {
      return DeviceType.mobile;
    }

    if (width < tablet) {
      return DeviceType.tablet;
    }

    return DeviceType.desktop;
  }
}
