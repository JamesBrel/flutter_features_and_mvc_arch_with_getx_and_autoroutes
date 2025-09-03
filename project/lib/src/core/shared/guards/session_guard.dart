// import 'package:auto_route/auto_route.dart';
// import 'package:get/get.dart';

// import '../../services/cache/secure_storage_service.dart';
// import '../../services/cache/shared_prefs_service.dart';
// import '../constants/envs_const.dart';
// import '../variables/int_variable.dart';
// import '../variables/string_variable.dart';

// class SessionGuard extends AutoRouteGuard {
//   var _sharedPrefsService = Get.find<SharedPrefsService>();
//   var _secureStorageService = Get.find<SecureStorageService>();

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) async {
//     var userId = _sharedPrefsService.get<int>(key: Envs.userId);
//     var accessToken = await _secureStorageService.get(
//       key: Envs.userAccessToken,
//     );
//     var refreshToken = await _secureStorageService.get(
//       key: Envs.userRefreshToken,
//     );

//     if (userId != null && accessToken != null && refreshToken != null) {
//       GlobalInt.userId = userId;
//       GlobalString.userAccessToken = accessToken;
//       GlobalString.userRefreshToken = refreshToken;

//       router.replacePath(
//         '', // todo : il faut remplacer par la route du 'profile screen'
//       );
//       // resolver.next(false);
//     } else {
//       resolver.next(true);
//     }
//   }
// }
