import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

abstract final class AppTheme {
  const AppTheme._();

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: AppColors.background,

      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        surface: AppColors.surface,
      ),

      textTheme: AppTextTheme.textTheme,

      splashFactory: NoSplash.splashFactory,

      hoverColor: Colors.transparent,

      highlightColor: Colors.transparent,
    );
  }
}
