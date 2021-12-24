import 'package:flutter/material.dart';

class AppTheme {
  //AppTheme._();

  static ThemeData themeData(bool lightMode) {
    return ThemeData(
        brightness: lightMode ? Brightness.light : Brightness.dark);
  }
}
