// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'translator.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class TranslatorEn extends Translator {
  TranslatorEn([String locale = 'en']) : super(locale);

  @override
  String welcome(Object status) {
    return 'Hi my $status 😉...';
  }

  @override
  String welcomeInfo(Object appName) {
    return '$appName will be developed on the basis of a design pattern called MVC and supported by the GetX state manager...';
  }

  @override
  String get noConnection => 'No internet connection';

  @override
  String get timeError => 'Execution time exceeded';

  @override
  String get requestErrorTryAgain => 'Request error, retry!';

  @override
  String get noContent => 'No content';

  @override
  String get internalError => 'Server error';

  @override
  String get cropImage => 'Crop Image';

  @override
  String get noImageTake => 'Error during image capture, please retry!';

  @override
  String get deviceError => 'Device error';

  @override
  String get unknownError => 'Unknown error';

  @override
  String get updateAvailable => 'New update, please Download it';

  @override
  String get updateIsDownloading => 'Downloading....';

  @override
  String get restartApp => 'Restart the app completely';
}
