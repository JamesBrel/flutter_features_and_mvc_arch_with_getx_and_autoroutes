import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/configs/inject_config/injector.dart';
import '../../../../core/configs/lang_config/translators/translator.dart';
import '../../../../core/configs/windows_config/responsive_layout.dart';
import '../../../../core/tools/constants/utils_const.dart';
import '../../controllers/hello_world_controller.dart';

part '../widgets/greeting_widget.dart';
part '../widgets/info_widget.dart';

@RoutePage()
class WelcomeScreen extends ResponsiveLayout {
  WelcomeScreen({super.key});
  var _controller = getIt<HelloWorldController>();

  //*-- PHONE SCREEN --
  @override
  Widget? phone(BuildContext context) {
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
                    _controller.helloResult.value.isLoading
                        ? const CircularProgressIndicator(color: Colors.black)
                        : _controller.helloResult.value.isSuccess
                        ? _GreetingWidget(
                          greeting: Translator.of(context)!.welcome(
                            _controller.helloResult.value.successModel!.data,
                          ),
                        )
                        : const SizedBox.shrink(),
              ),
              SizedBox(height: 10.0.h),
              _InfoWidget(
                notice: Translator.of(context)!.welcomeInfo(Utils.appName),
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
  //   TODO: implement tablet
  //   return super.tablet(context);
  // }

  //*-- DESKTOP SCREEN --
  // @override
  // Widget? desktop(BuildContext context) {
  // TODO: implement desktop
  //   return super.desktop(context);
  // }

  //*-- WATCH SCREEN --
  // @override
  // Widget? watch(BuildContext context) {
  // TODO: implement watch
  //   return super.watch(context);
  // }
}
