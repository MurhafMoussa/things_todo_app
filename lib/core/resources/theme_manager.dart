import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'text_style_manager.dart';

ThemeData getApplicationThemeData({required bool isDark}) => isDark
    ? ThemeData.dark().copyWith()
    : ThemeData.light().copyWith(
        primaryColor: ColorManager.primary,
        iconTheme: const IconThemeData(color: ColorManager.white),
        appBarTheme: const AppBarTheme(
          color: ColorManager.primary,
          iconTheme: IconThemeData(color: ColorManager.white),
          centerTitle: false,
          elevation: 0,
          scrolledUnderElevation: 0,
          actionsIconTheme: IconThemeData(
            color: ColorManager.white,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: getRegularStyle(color: ColorManager.darkBlue),
          titleMedium: getMediumStyle(color: ColorManager.darkBlue),
          labelLarge: getMediumStyle(color: ColorManager.white),
          labelMedium: getMediumStyle(color: ColorManager.white),
          headlineLarge: getBoldStyle(color: ColorManager.white),
        ),
      );
