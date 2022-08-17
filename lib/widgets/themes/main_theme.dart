import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: AppColors.yellow),
    scaffoldBackgroundColor: AppColors.green,
  );
  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: AppColors.yellow),
    scaffoldBackgroundColor: AppColors.green,
  );
}
