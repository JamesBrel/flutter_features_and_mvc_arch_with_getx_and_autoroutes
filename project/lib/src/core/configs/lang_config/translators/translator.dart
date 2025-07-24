import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'translator_en.dart';
import 'translator_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Translator
/// returned by `Translator.of(context)`.
///
/// Applications need to include `Translator.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translators/translator.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Translator.localizationsDelegates,
///   supportedLocales: Translator.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Translator.supportedLocales
/// property.
abstract class Translator {
  Translator(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Translator? of(BuildContext context) {
    return Localizations.of<Translator>(context, Translator);
  }

  static const LocalizationsDelegate<Translator> delegate = _TranslatorDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Hi my {status} 😉...'**
  String welcome(Object status);

  /// No description provided for @welcomeInfo.
  ///
  /// In en, this message translates to:
  /// **'{appName} will be developed on the basis of a design pattern called MVC and supported by the GetX state manager...'**
  String welcomeInfo(Object appName);

  /// No description provided for @noConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get noConnection;

  /// No description provided for @timeError.
  ///
  /// In en, this message translates to:
  /// **'Execution time exceeded'**
  String get timeError;

  /// No description provided for @requestErrorTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Request error, retry!'**
  String get requestErrorTryAgain;

  /// No description provided for @noContent.
  ///
  /// In en, this message translates to:
  /// **'No content'**
  String get noContent;

  /// No description provided for @internalError.
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get internalError;

  /// No description provided for @cropImage.
  ///
  /// In en, this message translates to:
  /// **'Crop Image'**
  String get cropImage;

  /// No description provided for @noImageTake.
  ///
  /// In en, this message translates to:
  /// **'Error during image capture, please retry!'**
  String get noImageTake;

  /// No description provided for @deviceError.
  ///
  /// In en, this message translates to:
  /// **'Device error'**
  String get deviceError;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownError;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'New update, please Download it'**
  String get updateAvailable;

  /// No description provided for @updateIsDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading....'**
  String get updateIsDownloading;

  /// No description provided for @restartApp.
  ///
  /// In en, this message translates to:
  /// **'Restart the app completely'**
  String get restartApp;
}

class _TranslatorDelegate extends LocalizationsDelegate<Translator> {
  const _TranslatorDelegate();

  @override
  Future<Translator> load(Locale locale) {
    return SynchronousFuture<Translator>(lookupTranslator(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_TranslatorDelegate old) => false;
}

Translator lookupTranslator(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return TranslatorEn();
    case 'fr': return TranslatorFr();
  }

  throw FlutterError(
    'Translator.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
