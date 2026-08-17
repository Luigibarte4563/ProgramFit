import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static const double shadowOffset = 4.0;
  static const double borderWidth = 1.5;
  static const double cardRadius = 12.0;
  static const double buttonRadius = 10.0;

  static BoxDecoration get cardDecoration => BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(cardRadius),
        border: Border.all(color: AppColors.border, width: borderWidth),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(shadowOffset, shadowOffset),
            blurRadius: 0,
          ),
        ],
      );

  static BoxDecoration get primaryButtonDecoration => BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(buttonRadius),
        border: Border.all(color: AppColors.border, width: borderWidth),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(3, 3),
            blurRadius: 0,
          ),
        ],
      );

  static BoxDecoration get secondaryButtonDecoration => BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(buttonRadius),
        border: Border.all(color: AppColors.border, width: borderWidth),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(3, 3),
            blurRadius: 0,
          ),
        ],
      );

  static TextStyle get headingLarge => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w900,
        color: AppColors.textBold,
        letterSpacing: -0.5,
      );

  static TextStyle get headingMedium => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: AppColors.textBold,
        letterSpacing: -0.3,
      );

  static TextStyle get headingSmall => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppColors.textBold,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textBold,
      );

  static TextStyle get bodyMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textBold,
      );

  static TextStyle get bodySmall => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      );

  static TextStyle get buttonText => const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );

  static TextStyle get buttonTextDark => const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.textBold,
      );
}
