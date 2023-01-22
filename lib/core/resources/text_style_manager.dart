import 'package:flutter/material.dart';
import 'package:things_todo/core/resources/color_manager.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    String fontFamily, FontWeight fontWeight, Color color, double fontSize) {
  return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight);
}

TextStyle _getRegularStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
      FontFamily.fontFamily, FontWeightManager.regular, color, fontSize);
}

TextStyle _getLightStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
      FontFamily.fontFamily, FontWeightManager.light, color, fontSize);
}

TextStyle _getBoldStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
      FontFamily.fontFamily, FontWeightManager.bold, color, fontSize);
}

TextStyle _getThinStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
      FontFamily.fontFamily, FontWeightManager.thin, color, fontSize);
}

TextStyle _getMediumStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
      FontFamily.fontFamily, FontWeightManager.medium, color, fontSize);
}

TextStyle _getBlackStyle({required Color color, required double fontSize}) {
  return _getTextStyle(
      FontFamily.fontFamily, FontWeightManager.black, color, fontSize);
}

TextStyle getSmallTitleTextStyle() {
  return _getRegularStyle(
      color: ColorManager.darkBlue, fontSize: FontSizesManager.s20);
}

TextStyle getSubtitleTextStyle() {
  return _getLightStyle(
      color: ColorManager.darkBlue, fontSize: FontSizesManager.s16);
}

TextStyle getBodyTextStyle() {
  return _getLightStyle(
      color: ColorManager.darkBlue, fontSize: FontSizesManager.s14);
}

TextStyle getNormalTitleTextStyle() {
  return _getBoldStyle(
      color: ColorManager.white, fontSize: FontSizesManager.s26);
}
