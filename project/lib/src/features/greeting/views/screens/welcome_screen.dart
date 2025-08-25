import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/configs/lang_config/translate_keys.dart';
import '../../../../core/tools/constants/utils_const.dart';
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
              Obx(
                () =>
                    controller.helloResult.value.isSuccess
                        ? _GreetingWidget(
                          greeting: TranslateKeys.welcome.trParams({
                            'status':
                                controller.helloResult.value.successModel!.data,
                          }),
                        )
                        : const SizedBox.shrink(),
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
