import 'package:flutter/material.dart';
import 'package:taskaya/core/functions/get_responsive_font.dart';
import 'package:taskaya/core/utils/app_colors.dart';

class AppFonts {
  static const String fontFamily = 'Alexandria';

  static TextStyle bold18(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFont(context, fontSize: 18),
      color: Colors.white,
    );
  }

  static TextStyle boldSemi16(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFont(context, fontSize: 16),
      color: AppColors.primaryColor2,
    );
  }
}
