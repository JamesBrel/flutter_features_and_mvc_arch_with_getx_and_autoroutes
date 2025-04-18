import 'package:flutter/material.dart';

class LightTheme {
  LightTheme._();

  static ThemeData light = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
    appBarTheme: AppBarTheme(scrolledUnderElevation: 0.0),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Color.fromRGBO(255, 255, 255, 1),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
      titleSmall: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    ),
  );
}
