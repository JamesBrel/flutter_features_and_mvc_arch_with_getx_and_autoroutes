import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/greeting/views/screens/welcome_screen.dart';
import 'routes.dart';

part "auto_routes.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Screen|SubScreen|Page,Route')
class AutoRoutes extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: Routes.main,
          page: WelcomeRoute.page,
          initial: true,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
