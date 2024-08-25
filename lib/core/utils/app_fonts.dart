import 'package:flutter/material.dart';
import 'package:taskaya/core/functions/get_responsive_font.dart';
import 'package:taskaya/core/utils/app_colors.dart';

class AppFonts {
  static const String fontFamily = 'Alexandria';

  static TextStyle bold58(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFont(context, fontSize: 58),
      color: Colors.white,
    );
  }

  static TextStyle bold24(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFont(context, fontSize: 24),
      color: AppColors.secondary,
    );
  }

  static TextStyle bold18(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFont(context, fontSize: 18),
      color: Colors.white,
    );
  }

  static TextStyle bold16(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFont(context, fontSize: 16),
      color: Colors.white,
    );
  }

  static TextStyle bold12(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFont(context, fontSize: 12),
      color: Colors.white,
    );
  }

  static TextStyle semiBold16(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFont(context, fontSize: 16),
      color: AppColors.linearColor2,
    );
  }

  static TextStyle semiBold12(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFont(context, fontSize: 12),
      color: Colors.white,
    );
  }

  static TextStyle regular20(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFont(context, fontSize: 20),
      color: AppColors.primary,
    );
  }

  static TextStyle regular16(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFont(context, fontSize: 16),
      color: AppColors.linearColor2,
    );
  }

  static TextStyle regular14(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFont(context, fontSize: 14),
      color: AppColors.secondary,
    );
  }

  static TextStyle regular12(context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFont(context, fontSize: 12),
      color: AppColors.linearColor2,
    );
  }
}
