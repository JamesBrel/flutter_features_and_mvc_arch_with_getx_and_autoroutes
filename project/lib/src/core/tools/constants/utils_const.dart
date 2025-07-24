import 'package:flutter/material.dart';

class Utils {
  //*--double constants --
  // const variableName = 0.0;

  //*--int constants --
  // const variableName = 0;

  //*--string constants --
  static const appName = "App Name";

  //*--object constants --
  static Size sizeInit(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    if (width < 600) {
      // Phone Design Size
      return const Size(375, 812);
    } else if (width < 900) {
      // Tablet Design Size
      return const Size(768, 1024);
    } else {
      // Desktop Design Size
      return const Size(1440, 900);
    }
  }
}
