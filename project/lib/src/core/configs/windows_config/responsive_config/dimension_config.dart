import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DimensionConfig {
  final BuildContext context;
  final MediaQueryData mediaQuery;

  DimensionConfig(this.context) : mediaQuery = MediaQuery.of(context);

  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  Map<String, double> get _baseSize {
    if (screenWidth <= 480) {
      return {
        'width': defaultTargetPlatform == TargetPlatform.iOS ? 375.0 : 360.0,
        'height': defaultTargetPlatform == TargetPlatform.iOS ? 812.0 : 640.0
      };
    } else if (screenWidth <= 1024) {
      return {'width': 768.0, 'height': 1024.0};
    }
    return {'width': 1440.0, 'height': 900.0};
  }

  double get _widthRatio => screenWidth / _baseSize['width']!;
  double get _heightRatio => screenHeight / _baseSize['height']!;
  double get _aspectRatio => mediaQuery.size.aspectRatio;

  double setWidth(double pixels) => pixels * _widthRatio;
  double setHeight(double pixels) => pixels * _heightRatio;
  double setRadius(double pixels) => pixels * min(_widthRatio, _heightRatio);

  double setSp(double pixels) {
    final textScaler = MediaQuery.textScalerOf(context);
    final baseSize = pixels * min(_widthRatio, _heightRatio);
    return textScaler.scale(baseSize);
  }
}
