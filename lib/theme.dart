import 'package:flutter/material.dart';

abstract class AppColors {
  static const gray = Color.fromRGBO(173, 173, 173, 1);
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const lightBlue = Color.fromRGBO(155, 249, 255, 1);
  static const cardColor = Color.fromRGBO(255, 255, 255, 0.3);
  static const cardColor2 = Color.fromRGBO(255, 255, 255, 0.8);
  static const cardColor3 = Color.fromRGBO(107, 140, 182, 1.0);
  static const blue1 = Color.fromRGBO(82, 144, 225, 1);
  static const blue2 = Color.fromRGBO(39, 89, 186, 1);
  static const blue3 = Color.fromRGBO(11, 40, 96, 1);
  static const lightRed = Color.fromRGBO(255, 124, 124, 1);
}

abstract class AppTheme {
  static const accentColor = AppColors.white;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  ///Light theme
  static ThemeData light() => ThemeData(
      accentColor: accentColor,
      scaffoldBackgroundColor: AppColors.white,
      /// backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      visualDensity: visualDensity,
      cardColor: AppColors.cardColor,
      appBarTheme: AppBarTheme(
          elevation: 0,
          color: Color.fromRGBO(255, 255, 255, 0.01),
          titleTextStyle: TextStyle(
              color: AppColors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500),
          iconTheme: IconThemeData(color: AppColors.white)),
      iconTheme: IconThemeData(color: AppColors.white, size: 24));
}
