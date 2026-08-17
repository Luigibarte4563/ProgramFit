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
    'SITE': Color(0xFF6B7280),
    'SOE': Color(0xFFF97316),
    'STE': Color(0xFF2563EB),
    'SBA': Color(0xFFCA8A04),
    'SIHM': Color(0xFFDC2626),
    'SOH': Color(0xFF8B5CF6),
    'SOHS': Color(0xFF16A34A),
    'SOC': Color(0xFF7F1D1D),
  };
}
