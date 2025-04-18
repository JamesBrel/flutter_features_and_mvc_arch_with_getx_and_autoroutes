import 'package:flutter/material.dart';

class DarkTheme {
  DarkTheme._();
  static ThemeData dark = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
    appBarTheme: AppBarTheme(scrolledUnderElevation: 0.0),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Color.fromRGBO(0, 0, 0, 1),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      titleSmall: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    ),
  );
}
