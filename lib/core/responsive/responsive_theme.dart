class ResponsiveTheme {
  const ResponsiveTheme({
    required this.pagePadding,
    required this.sectionSpacing,
    required this.heroTitle,
    required this.heading,
    required this.body,
    required this.imageWidth,
    required this.buttonHeight,
    required this.contentMaxWidth,
    required this.heroGradientRadius,
  });

  final double pagePadding;
  final double sectionSpacing;

  final double heroTitle;
  final double heroGradientRadius;

  final double heading;
  final double body;

  final double imageWidth;
  final double buttonHeight;

  final double contentMaxWidth;
}
