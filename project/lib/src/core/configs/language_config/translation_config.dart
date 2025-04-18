import 'package:get/get.dart';

import 'languages/en.dart';
import 'languages/fr.dart';

class TranslationConfig extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'fr_FR': french,
      };
}
