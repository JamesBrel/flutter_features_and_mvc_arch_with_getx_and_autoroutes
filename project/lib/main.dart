import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/core/configs/initial_config/global_binding.dart';
import 'src/core/configs/initial_config/init_config.dart';
import 'src/core/configs/language_config/translation_config.dart';
import 'src/core/shared/constants/string_const.dart';
import 'src/core/themes/dark_theme.dart';
import 'src/core/themes/light_theme.dart';
import 'src/routes/auto_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitConfig.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _autoRoutes = AutoRoutes();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      title: appName,
      themeMode: ThemeMode.light,
      theme: LightTheme.light,
      darkTheme: DarkTheme.dark,
      initialBinding: GlobalBinding(),
      routerDelegate: _autoRoutes.delegate(),
      routeInformationParser: _autoRoutes.defaultRouteParser(),
      translations: TranslationConfig(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en", "US"),
    );
  }
}
