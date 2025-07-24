import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeApp {
  //*-- light theme
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    appBarTheme: const AppBarTheme(scrolledUnderElevation: 0.0),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Color.fromRGBO(255, 255, 255, 1),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20.0.sp,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
      titleSmall: TextStyle(
        fontSize: 15.0.sp,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    ),
  );

  //*-- dark theme
  ThemeData get dark => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
    appBarTheme: AppBarTheme(scrolledUnderElevation: 0.0),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Color.fromRGBO(0, 0, 0, 1),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20.0.sp,
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      titleSmall: TextStyle(
        fontSize: 15.0.sp,
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    ),
  );
}
