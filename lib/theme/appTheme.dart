// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'appColors.dart';

class AppTheme {
  static const defaultFontFamily = 'shabnam';

  static const primaryTextColor = Color(0xff0D253C);
  static const secondaryTextColor = Color(0xff2D4379);

  static const white = Colors.white;

  static final appTheme = ThemeData(
      // brightness: Brightness.dark,
      // scaffoldBackgroundColor: white,
      fontFamily: 'shabnam',
      primaryColor: primaryColor,
      primarySwatch: materialbg,
      appBarTheme: AppBarTheme(
        // elevation: 0,
        // backgroundColor: primaryColor,
        backgroundColor: HexColor("#ffffff"),
        titleTextStyle: TextStyle(
          color: HexColor("#000000"),
          fontSize: 14,
        ),
        elevation: 0,
        shadowColor: HexColor("#ffffff"),

        iconTheme: const IconThemeData(
          color: white,
        ),
      ),
      textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontFamily: defaultFontFamily,
              color: secondaryTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 14),
          titleLarge: TextStyle(
              fontFamily: defaultFontFamily,
              fontWeight: FontWeight.bold,
              color: primaryTextColor,
              fontSize: 14),
          displayLarge: TextStyle(
              fontFamily: defaultFontFamily,
              fontWeight: FontWeight.bold,
              color: primaryTextColor,
              fontSize: 17),
          bodyMedium: TextStyle(
              fontFamily: defaultFontFamily,
              color: secondaryTextColor,
              fontSize: 14),
          bodySmall: TextStyle(
              fontFamily: defaultFontFamily,
              fontWeight: FontWeight.w700,
              color: Color(0xff7B8BB2),
              fontSize: 10)));
}
