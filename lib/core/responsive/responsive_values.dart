import 'responsive_theme.dart';

class ResponsiveValues {
  static const mobile = ResponsiveTheme(
    pagePadding: 35,
    sectionSpacing: 80,
    heroGradientRadius: 0.58,

    heroTitle: 42,
    heading: 30,
    body: 16,

    imageWidth: 280,
    buttonHeight: 52,

    contentMaxWidth: double.infinity,
  );

  static const tablet = ResponsiveTheme(
    pagePadding: 55,
    sectionSpacing: 120,
    heroGradientRadius: 0.46,

    heroTitle: 56,
    heading: 36,
    body: 18,

    imageWidth: 360,
    buttonHeight: 56,

    contentMaxWidth: 1100,
  );

  static const desktop = ResponsiveTheme(
    pagePadding: 80,
    sectionSpacing: 160,
    heroGradientRadius: 0.65,

    heroTitle: 72,
    heading: 42,
    body: 20,

    imageWidth: 500,
    buttonHeight: 60,

    contentMaxWidth: 1400,
  );
}
