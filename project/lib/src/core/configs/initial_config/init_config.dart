import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:terminate_restart/terminate_restart.dart';

import '../../global/services/update/requests/check_new_updates_request.dart';
import '../../shared/constants/envs_const.dart';
import '../../shared/constants/int_const.dart';
import '../../shared/constants/string_const.dart';

class InitConfig {
  static InitConfig get instance => InitConfig();

  void init() async {
    //! starter instance
    setPathUrlStrategy();
    TerminateRestart.instance.initialize();
    GetStorage.init("$appName ${Envs.env}");

    //! services config init
    // await FirebaseConfig.init(
    //   env: EnvPath.env,
    // );

    // HttpOverrides.global = new HttpOverridesHelper();

    //! updates Checking
    if (!kIsWeb) {
      CheckNewUpdatesRequest.checkTheUpdates();
    }

    //! splash screen remover
    await Future.delayed(
      const Duration(seconds: splashDuration),
    ).then((_) => {FlutterNativeSplash.remove()});

    //! screen orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    //! screen config
    // WindowConfig.windowsInit();
  }
}
