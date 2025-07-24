// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'translator.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class TranslatorFr extends Translator {
  TranslatorFr([String locale = 'fr']) : super(locale);

  @override
  String welcome(Object status) {
    return 'Salut mon $status 😉...';
  }

  @override
  String welcomeInfo(Object appName) {
    return '$appName sera développé sous la base d\'un design pattern appelé MVC et soutenu par le gestionnaire d\'état GetX...';
  }

  @override
  String get noConnection => 'Pas de connexion internet';

  @override
  String get timeError => 'Temps d\'éxécution dépassé';

  @override
  String get requestErrorTryAgain => 'Erreur de requête, Réessayer !';

  @override
  String get noContent => 'Aucun contenu';

  @override
  String get internalError => 'Erreur sur le serveur';

  @override
  String get cropImage => 'Trimmer l\'Image';

  @override
  String get noImageTake => 'Erreur durant la prise d\'image, Veuillez réessayer !';

  @override
  String get deviceError => 'Erreur au niveau de votre appareil';

  @override
  String get unknownError => 'Erreur inconnue';

  @override
  String get updateAvailable => 'Une nouvelle mise à jour sera téléchargée';

  @override
  String get updateIsDownloading => 'Téléchargement....';

  @override
  String get restartApp => 'Redémarrage en cours de l\'application';
}
