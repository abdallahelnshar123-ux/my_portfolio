import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_theme.dart';

import '../responsive/responsive.dart';

extension ScreenSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  ResponsiveTheme get responsive => Responsive.of(this);
}
