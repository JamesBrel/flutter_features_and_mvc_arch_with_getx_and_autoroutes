import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'src/core/configs/initial_config/init_config.dart';
import 'src/core/configs/lang_config/translator.dart';
import 'src/core/themes/theme_app.dart';
import 'src/core/tools/constants/utils_const.dart';
import 'src/routes/app_router.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await InitConfig.initialize(
    onComplete: () {
      runApp(MyApp());
      FlutterNativeSplash.remove();
    },
    onProgress: (progress) {
      debugPrint('Loading: ${(progress * 100).toStringAsFixed(0)}%');
    },
  );
}

class MyApp extends StatelessWidget {
  var _router = Get.find<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      title: Utils.appName,
      routeInformationProvider: _router.routeInfoProvider(),
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
      translations: Translator(),
      locale: Get.deviceLocale,
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
