import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color background = Color(0xFFFAF6EE);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color primary = Color(0xFF2563EB);
  static const Color primaryLight = Color(0xFFDBEAFE);
  static const Color textBold = Color(0xFF111111);
  static const Color textSecondary = Color(0xFF6B6254);
  static const Color border = Color(0xFF1A1A1A);
  static const Color shadow = Color(0xFF1A1A1A);
  static const Color success = Color(0xFF16A34A);
  static const Color warning = Color(0xFFEAB308);
  static const Color error = Color(0xFFDC2626);

  static const Map<String, Color> departmentColors = {
    'IT': Color(0xFF2563EB),
    'ENG': Color(0xFFF97316),
    'ED': Color(0xFF16A34A),
    'BUS': Color(0xFFD97706),
    'HM': Color(0xFF8B5CF6),
    'HUM': Color(0xFFEC4899),
    'HS': Color(0xFF06B6D4),
    'CRIM': Color(0xFF64748B),
  };
}
