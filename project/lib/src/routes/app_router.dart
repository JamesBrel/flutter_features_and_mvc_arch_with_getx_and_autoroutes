import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/hello_world/views/screens/welcome_screen.dart';
import 'routes.dart';

part "app_router.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Screen|SubScreen|Page|subPage,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: Routes.main, page: WelcomeRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
