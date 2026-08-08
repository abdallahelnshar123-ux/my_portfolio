import 'responsive_theme.dart';

class ResponsiveValues {
  static const mobile = ResponsiveTheme(
    pagePadding: 35,
    sectionSpacing: 80,

    /// hero section
    sectionHeight: 600,

    /// hero background
    heroGradientRadius: 0.58,

    /// hero content
    heroTitle: 80,
    techIconPadding: 5,
    techIconWidth: 30,
    techIconRadius: 7,
    contentBottomPadding: 25,
    contentLeftPadding: 30,
    contentRightPadding: 30,
    contentTopPadding: 50,

    /// right sidebar
    rightSideBarPadding: 15,
    rightSideBarArrowSize: 15 ,
    rightSideTextSize: 10,
    socialIconWidth: 8,
    rightSideBarSpacing: 10,


    /// left navigation
    leftNavigationFontSize: 13,

    /// about section
    dataContainerMargin: 30,
    dataContainerRadius: 30,





    heading: 30,
    body: 16,

    imageWidth: 280,
    buttonHeight: 52,

    contentMaxWidth: double.infinity,
  );

  static const tablet = ResponsiveTheme(
    pagePadding: 55,
    sectionSpacing: 120,

    /// hero section
    sectionHeight: 750,

    /// hero background
    heroGradientRadius: 0.46,

    /// hero content
    heroTitle: 110,
    techIconPadding: 10,
    techIconWidth: 30,
    techIconRadius: 10,
    contentBottomPadding: 40,
    contentLeftPadding: 10,
    contentRightPadding: 10,
    contentTopPadding: 10,

    /// right sidebar
    rightSideBarPadding: 25,
    rightSideBarArrowSize: 20 ,
    rightSideTextSize: 15,
    socialIconWidth: 10,
    rightSideBarSpacing: 10,
    /// left navigation
    leftNavigationFontSize: 16,

    /// about section
    dataContainerMargin: 30,
    dataContainerRadius: 40,



    heading: 36,
    body: 18,

    imageWidth: 360,
    buttonHeight: 56,

    contentMaxWidth: 1100,
  );

  static const desktop = ResponsiveTheme(
    pagePadding: 80,
    sectionSpacing: 160,

    /// hero section
    sectionHeight: 800,

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

    /// right sidebar
    rightSideBarPadding: 35,
    rightSideBarArrowSize: 20 ,
    rightSideTextSize: 15,
    socialIconWidth: 15,
    rightSideBarSpacing: 10,

    /// left navigation
    leftNavigationFontSize: 20,

    /// about section
    dataContainerMargin: 130,
    dataContainerRadius: 250,






    heading: 42,
    body: 20,

    imageWidth: 500,
    buttonHeight: 60,

    contentMaxWidth: 1400,
  );
}
