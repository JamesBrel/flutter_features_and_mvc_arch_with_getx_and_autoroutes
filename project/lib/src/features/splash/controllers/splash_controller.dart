import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../../core/configs/initial_config/init_config.dart';
import '../../../core/configs/inject_config/injector.dart';
import '../../../routes/app_router.dart';
import '../../../routes/routes.dart';

@injectable
class SplashController extends GetxController {
  var _router = getIt<AppRouter>();
  var _duration = Duration(seconds: 5);

  @override
  void onInit() {
    InitConfig.initialize(
      onComplete:
          () => Future.delayed(
            _duration,
          ).whenComplete(() => _router.replacePath(Routes.welcome)),
      onProgress:
          (progress) =>
              debugPrint('Loading: ${(progress * 100).toStringAsFixed(1)}%'),
    );
    super.onInit();
  }
}
