import 'package:flutter/material.dart';
import 'package:taskaya/core/utils/size_config.dart';

getResponsiveFont(BuildContext context, {required double fontSize}) {
  double fontFactor = getFontFactor(context);
  double responsiveFont = fontFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double getFontFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.mobile) {
    return width / 500;
  } else if (width < SizeConfig.tablet) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
