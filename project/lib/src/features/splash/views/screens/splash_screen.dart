import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/configs/inject_config/injector.dart';
import '../../controllers/splash_controller.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  var _controller = getIt<SplashController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder:
          (_) => Scaffold(
            body: Center(
              child: Text(
                'Splash Screen',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 24.0.sp,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          ),
    );
  }
}
