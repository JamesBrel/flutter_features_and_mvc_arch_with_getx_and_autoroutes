import 'package:flutter/material.dart';

class Utils {
  //*-- double constants --
  // const variableName = 0.0;

  //*-- int constants --
  // const variableName = 0;

  //*-- string constants --
  static const appName = "App Name";

  //*-- object constants --
  static Size sizeInit(
    BuildContext context, {
    double phone_Width = 375.0,
    double phone_Height = 812.0,
    double tablet_Width = 768.0,
    double tablet_Height = 1024.0,
    double desk_Width = 1440.0,
    double desk_Height = 900.0,
  }) {
    var width = MediaQuery.of(context).size.width;

    if (width < 600) {
      // Phone Design Size
      return Size(phone_Width, phone_Height);
    } else if (width < 900) {
      // Tablet Design Size
      return Size(tablet_Width, tablet_Height);
    } else {
      // Desktop Design Size
      return Size(desk_Width, desk_Height);
    }
  }
}
