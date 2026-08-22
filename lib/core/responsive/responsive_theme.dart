class ResponsiveTheme {
  const ResponsiveTheme({
    required this.pagePaddingVertical,
    required this.pagePaddingHorizontal,
    required this.sectionSpacing,
    required this.heroTitle,
    required this.heading,
    required this.body,
    required this.imageWidth,
    required this.buttonHeight,
    required this.contentMaxWidth,
    required this.heroGradientRadius,
    required this.rightSideBarPadding,
    required this.techIconPadding,
    required this.techIconWidth,
    required this.techIconRadius,
    required this.sectionHeight,
    required this.contentBottomPadding,
    required this.contentLeftPadding,
    required this.contentRightPadding,
    required this.contentTopPadding,
    required this.rightSideBarArrowSize,
    required this.rightSideTextSize,
    required this.socialIconWidth,
    required this.rightSideBarSpacing,
    required this.leftNavigationFontSize,
    required this.dataContainerMargin,
    required this.dataContainerRadius,
    required this.aboutMeBodyFontSize,
    required this.aboutMeFontSize,
    required this.heroButtonContentSize,
    required this.heroButtonPadding,
    required this.aboutSectionHeight,
  });

  final double pagePaddingVertical;
  final double pagePaddingHorizontal;
  final double sectionSpacing;

  /// hero section
  final double sectionHeight;

  /// hero background
  final double heroGradientRadius;

  /// hero content
  final double heroTitle;
  final double techIconPadding;
  final double techIconRadius;
  final double techIconWidth;
  final double contentRightPadding;
  final double contentTopPadding;
  final double contentBottomPadding;
  final double contentLeftPadding;
  final double heroButtonContentSize;
  final double heroButtonPadding;

  /// right sidebar

  final double rightSideBarPadding;
  final double rightSideBarSpacing;
  final double rightSideTextSize;
  final double rightSideBarArrowSize;
  final double socialIconWidth;

  /// left navigation
  final double leftNavigationFontSize;

  /// about section
  final double dataContainerMargin;
  final double dataContainerRadius;
  final double aboutMeFontSize;
  final double aboutMeBodyFontSize;
  final double aboutSectionHeight;





  final double heading;
  final double body;

  final double imageWidth;
  final double buttonHeight;

  final double contentMaxWidth;
}
