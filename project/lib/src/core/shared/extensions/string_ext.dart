// import 'package:intl/intl.dart';

import 'dart:ui';

extension StringExt on String {
  // String get timeConverter => DateFormat('HH:mm').format(DateTime.parse(this));

  bool get isCorrectMail =>
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(this);

  Color get toColor => Color(int.parse(replaceAll('#', '0xFF')));
}
