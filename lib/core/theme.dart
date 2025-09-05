import 'package:flutter/material.dart';
import 'constants.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBg,
  primaryColor: AppColors.primaryGreen,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.inputBg,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    hintStyle: const TextStyle(color: Colors.grey),
  ),
);
