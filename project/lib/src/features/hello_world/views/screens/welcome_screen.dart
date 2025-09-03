import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/configs/lang_config/translate_keys.dart';
import '../../../../core/shared/constants/assets_const.dart';
import '../../../../core/shared/constants/utils_const.dart';
import '../../../../core/shared/helpers/assets_helper.dart';
import '../../controllers/hello_world_controller.dart';

part '../widgets/greeting_widget.dart';
part '../widgets/info_widget.dart';

@RoutePage()
class WelcomeScreen extends GetResponsiveView<HelloWorldController> {
  WelcomeScreen({super.key});

  //*-- PHONE SCREEN --
  @override
  Widget? phone() {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AssetsHelper.getCachedImage(
                Assets.splash,
                builder: (file) {
                  return Image.file(
                    file,
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.contain,
                  );
                },
              ),
              SizedBox(height: 30.0.h),
              GetBuilder(
                init: controller,
                builder:
                    (_) => _GreetingWidget(
                      greeting: TranslateKeys.welcome.trParams({
                        'status': controller.helloResult,
                      }),
                    ),
              ),
              SizedBox(height: 10.0.h),
              _InfoWidget(
                notice: TranslateKeys.welcomeInfo.trParams({
                  'appName': Utils.appName,
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //*-- TABLET SCREEN --
  // @override
  // Widget? tablet() {
  //   // TODO: implement tablet
  //   return super.tablet();
  // }

  //*-- DESKTOP SCREEN --
  // @override
  // Widget? desktop() {
  //   // TODO: implement desktop
  //   return super.desktop();
  // }

  //*-- WATCH SCREEN --
  // @override
  // Widget? watch() {
  //   // TODO: implement watch
  //   return super.watch();
  // }
}
