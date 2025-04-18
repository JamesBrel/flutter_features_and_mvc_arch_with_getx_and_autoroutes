import 'dart:ui';

extension CustomColor on Color {
  Color withCustomOpacity(double opacity) {
    assert(opacity >= 0.0 && opacity <= 1.0,
        'Opacity must be between 0.0 and 1.0');
    return Color.fromRGBO(
      r.toInt(),
      g.toInt(),
      b.toInt(),
      opacity,
    );
  }
}
