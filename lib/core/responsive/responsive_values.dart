import 'responsive_theme.dart';

class ResponsiveValues {
  static const mobile = ResponsiveTheme(
    pagePaddingHorizontal: 35,
    pagePaddingVertical: 40,
    sectionSpacing: 80,

    /// hero section
    sectionHeight: 550,

    /// hero background
    heroGradientRadius: 0.58,

    /// hero content
    heroTitle: 60,
    techIconPadding: 5,
    techIconWidth: 30,
    techIconRadius: 7,
    contentBottomPadding: 25,
    contentLeftPadding: 30,
    contentRightPadding: 30,
    contentTopPadding: 50,
    heroButtonContentSize: 13,
    heroButtonPadding: 10,

    /// right sidebar
    rightSideBarPadding: 15,
    rightSideBarArrowSize: 15,
    rightSideTextSize: 10,
    socialIconWidth: 8,
    rightSideBarSpacing: 10,

    /// left navigation
    leftNavigationFontSize: 12,

    /// about section
    dataContainerMargin: 30,
    dataContainerRadius: 80,
    aboutMeBodyFontSize: 10,
    aboutMeFontSize: 30,
    aboutSectionHeight: 0.6,

    heading: 30,
    body: 16,

    imageWidth: 280,
    buttonHeight: 52,

    contentMaxWidth: double.infinity,
  );

  static const tablet = ResponsiveTheme(
    pagePaddingHorizontal: 55,
    pagePaddingVertical: 60,

    sectionSpacing: 120,

    /// hero section
    sectionHeight: 700,

    /// hero background
    heroGradientRadius: 0.46,

    /// hero content
    heroTitle: 80,
    techIconPadding: 10,
    techIconWidth: 30,
    techIconRadius: 10,
    contentBottomPadding: 40,
    contentLeftPadding: 10,
    contentRightPadding: 10,
    contentTopPadding: 10,
    heroButtonContentSize: 20,
    heroButtonPadding: 15,

    /// right sidebar
    rightSideBarPadding: 25,
    rightSideBarArrowSize: 20,
    rightSideTextSize: 15,
    socialIconWidth: 10,
    rightSideBarSpacing: 10,

    /// left navigation
    leftNavigationFontSize: 16,

    /// about section
    dataContainerMargin: 30,
    dataContainerRadius: 100,
    aboutMeBodyFontSize: 13,
    aboutMeFontSize: 50,
    aboutSectionHeight: 0.6,

    heading: 36,
    body: 18,

    imageWidth: 360,
    buttonHeight: 56,

    contentMaxWidth: 1100,
  );

  static const desktop = ResponsiveTheme(
    pagePaddingHorizontal: 80,
    pagePaddingVertical: 90,
    sectionSpacing: 160,

    /// hero section
    sectionHeight: 900,

    /// hero background
    heroGradientRadius: 0.65,

    /// hero content
    heroTitle: 150,
    techIconPadding: 10,
    techIconWidth: 40,
    techIconRadius: 12,
    contentBottomPadding: 40,
    contentLeftPadding: 10,
    contentRightPadding: 10,
    contentTopPadding: 10,
    heroButtonContentSize: 25,
    heroButtonPadding: 20,

    /// right sidebar
    rightSideBarPadding: 35,
    rightSideBarArrowSize: 20,
    rightSideTextSize: 15,
    socialIconWidth: 15,
    rightSideBarSpacing: 10,

    /// left navigation
    leftNavigationFontSize: 18,

    /// about section
    dataContainerMargin: 130,
    dataContainerRadius: 250,
    aboutMeBodyFontSize: 15,
    aboutMeFontSize: 70,
    aboutSectionHeight: 0.6,

    heading: 42,
    body: 20,

    imageWidth: 500,
    buttonHeight: 60,

    contentMaxWidth: 1400,
  );
}
