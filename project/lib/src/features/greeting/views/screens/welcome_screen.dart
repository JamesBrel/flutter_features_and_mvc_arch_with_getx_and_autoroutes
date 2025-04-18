import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/configs/windows_config/responsive_config/responsive_layout.dart';
import '../../../../core/shared/constants/lang_const.dart';
import '../../../../core/shared/constants/string_const.dart';
import '../../../../core/shared/extensions/dim_ext.dart';
import '../../controllers/hello_world/hello_world_controller.dart';

part '../widgets/greeting_widget.dart';
part '../widgets/info_widget.dart';

@RoutePage()
class WelcomeScreen extends ResponsiveLayout {
  WelcomeScreen({super.key});

  var _controller = Get.find<HelloWorldController>();

  //*-- PHONE SCREEN --
  @override
  Widget? phone(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Obx(() => _GreetingWidget(
                    greeting: _controller.hello.value.tr,
                  )),
              const SizedBox(height: 10.0),
              _InfoWidget(
                notice: Lang.welcomeInfo.trParams({"appName": appName}),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //*-- TABLET SCREEN --
  // @override
  // Widget? tablet(BuildContext context) {
  // todo: implement tablet
  //   return super.tablet();
  // }

  //*-- DESKTOP SCREEN --
  // @override
  // Widget? desktop(BuildContext context) {
  // todo: implement desktop
  //   return super.desktop();
  // }

  //*-- WATCH SCREEN --
  // @override
  // Widget? watch(BuildContext context) {
  // todo: implement watch
  //   return super.watch();
  // }
}
