import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserat',
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserat',
    brightness: Brightness.dark,
  );
}
