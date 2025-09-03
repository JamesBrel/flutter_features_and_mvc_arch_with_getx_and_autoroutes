import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExt on String {
  String get timeConverter => DateFormat('hh:mm').format(DateTime.parse(this));

  bool get isCorrectMail =>
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(this);

  Color get toColor => Color(int.parse(replaceAll('#', '0xFF')));

  int get toMicrosecondsSinceEpoch {
    // 1. Convertir l'espace en 'T' pour le format ISO 8601
    var isoString = replaceFirst(' ', 'T');

    // 2. Parser la DateTime
    var dateTime = DateTime.parse(isoString);

    // 3. Récupérer les microsecondes depuis l'epoch (1er janvier 1970 UTC)
    return dateTime.microsecondsSinceEpoch;
  }

  String get fileType {
    var ext = split('.').last.toLowerCase();
    if (['jpg', 'jpeg', 'png', 'gif'].contains(ext)) return "image";
    if (['mp4', 'mov', 'avi'].contains(ext)) return "video";
    if (ext == 'pdf') return "pdf";
    if (['doc', 'docx', 'txt', 'rtf'].contains(ext)) return "document";
    if (['mp3', 'wav', 'aac'].contains(ext)) return "audio";
    return '';
  }

  String get timeAgo {
    DateTime past = DateTime.parse(this).toLocal();
    DateTime now = DateTime.now().toLocal();
    Duration difference = now.difference(past);

    if (difference.inDays > 0) {
      return "il y a ${difference.inDays} jour${difference.inDays > 1 ? 's' : ''}";
    } else if (difference.inHours > 0) {
      return "il y a ${difference.inHours} heure${difference.inHours > 1 ? 's' : ''}";
    } else if (difference.inMinutes > 0) {
      return "il y a ${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''}";
    } else {
      return "à l'instant";
    }
  }
}
