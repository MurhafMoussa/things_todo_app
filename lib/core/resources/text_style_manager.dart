import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
   String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}


TextStyle getRegularStyle({ required Color color}) {
  return _getTextStyle(
       FontFamily.fontFamily, FontWeightManager.regular, color);
}

TextStyle getLightStyle({ required Color color}) {
  return _getTextStyle(
       FontFamily.fontFamily, FontWeightManager.light, color);
}

TextStyle getBoldStyle({ required Color color}) {
  return _getTextStyle(
       FontFamily.fontFamily, FontWeightManager.bold, color);
}


TextStyle getThinStyle({ required Color color}) {
  return _getTextStyle(
       FontFamily.fontFamily, FontWeightManager.thin, color);
}


TextStyle getMediumStyle({ required Color color}) {
  return _getTextStyle(
       FontFamily.fontFamily, FontWeightManager.medium, color);
}
TextStyle getBlackStyle({ required Color color}) {
  return _getTextStyle(
       FontFamily.fontFamily, FontWeightManager.black, color);
}
