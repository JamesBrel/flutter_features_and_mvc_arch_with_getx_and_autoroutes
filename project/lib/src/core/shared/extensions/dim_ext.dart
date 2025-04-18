import 'package:flutter/material.dart';

import '../../configs/windows_config/responsive_config/dimension_config.dart';

extension DimExt on num {
  DimensionConfig _dim(BuildContext context) => DimensionConfig(context);

  double w(BuildContext context) => _dim(context).setWidth(toDouble());
  double h(BuildContext context) => _dim(context).setHeight(toDouble());
  double r(BuildContext context) => _dim(context).setRadius(toDouble());
  double st(BuildContext context) => _dim(context).setSp(toDouble());
}
