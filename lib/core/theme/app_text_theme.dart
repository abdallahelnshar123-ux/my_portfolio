import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract final class AppTextTheme {
  const AppTextTheme._();

  static TextTheme get textTheme {
    final base = GoogleFonts.outfitTextTheme();

    return base.copyWith(
      displayLarge: base.displayLarge?.copyWith(
        fontSize: 56,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),

      displayMedium: base.displayMedium?.copyWith(
        fontSize: 42,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),

      headlineLarge: base.headlineLarge?.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      headlineMedium: base.headlineMedium?.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      titleLarge: base.titleLarge?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),

      bodyLarge: base.bodyLarge?.copyWith(
        fontSize: 18,
        color: AppColors.textSecondary,
      ),

      bodyMedium: base.bodyMedium?.copyWith(
        fontSize: 16,
        color: AppColors.textSecondary,
      ),

      bodySmall: base.bodySmall?.copyWith(
        fontSize: 14,
        color: AppColors.textSecondary,
      ),
    );
  }
}
