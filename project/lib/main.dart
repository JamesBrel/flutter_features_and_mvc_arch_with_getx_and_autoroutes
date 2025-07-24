import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/core/configs/inject_config/injector.dart';
import 'src/core/configs/lang_config/translators/translator.dart';
import 'src/core/themes/theme_app.dart';
import 'src/core/tools/constants/utils_const.dart';
import 'src/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _autoRoutes = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      title: Utils.appName,
      routerConfig: _autoRoutes.config(),
      supportedLocales: Translator.supportedLocales,
      localizationsDelegates: Translator.localizationsDelegates,
      locale: const Locale('fr'),
      builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: Utils.sizeInit(context),
          minTextAdapt: true,
          splitScreenMode: true,
        );
        return Theme(data: ThemeApp.light, child: child!);
      },
    );
  }
}
