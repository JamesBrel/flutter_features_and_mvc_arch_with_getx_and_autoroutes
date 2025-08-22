import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';

import '../../services/auth_service.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    var _isAuth = await Get.find<AuthService>().isAuth();
    if (!_isAuth) {
      resolver.next(true);
    } else {
      router.replacePath(
        '', // todo : il faut remplacer par la route du 'profile screen'
      );
      resolver.next(false);
    }
  }
}
