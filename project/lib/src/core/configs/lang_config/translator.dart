import 'package:get/get.dart';

import 'langs/en.dart';
import 'langs/fr.dart';

class Translator extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': english,
    'fr_FR': french,
  };
}
