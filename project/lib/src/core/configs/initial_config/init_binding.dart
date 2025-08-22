import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/greeting/controllers/hello_world_controller.dart';
import '../../../routes/app_router.dart';
import '../../services/auth_service.dart';
import '../../services/hello_world_service.dart';
import '../../tools/controllers/connectivity_controller.dart';
import '../../tools/packages/cache/secure_storage_request.dart';
import '../../tools/packages/cache/shared_prefs_request.dart';
import '../../tools/packages/security/security_request.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    //! -- INSTANCES --

    //*-- CONNECTIVITY --
    Get.lazyPut(() => InternetConnection(), fenix: true);

    //*-- AUTO-ROUTES --
    Get.lazyPut(() => AppRouter(), fenix: true);

    //*-- DIO --
    // Get.lazyPut(() =>
    // Dio(
    //     BaseOptions(
    //       baseUrl: Envs.baseUrl,
    //       connectTimeout: const Duration(seconds: 30),
    //       receiveTimeout: const Duration(seconds: 30),
    //       validateStatus: (statusCode) => true,
    //     ),
    //   )
    // ..interceptors.add(
    //   DioCacheInterceptor(
    //     options: CacheOptions(
    //       store: MemCacheStore(),
    //       policy: CachePolicy.request,
    //       priority: CachePriority.normal,
    //       maxStale: const Duration(days: 7),
    //       allowPostMethod: true,
    //     ),
    //   ),
    // )
    // ..interceptors.add(
    //   PrettyDioLogger(
    //     requestHeader: true,
    //     requestBody: true,
    //     responseBody: true,
    //     responseHeader: false,
    //     error: true,
    //     compact: true,
    //     maxWidth: 90,
    //     enabled: kDebugMode,
    //   ),
    // ), fenix: true);

    //*-- CACHE --
    Get.putAsync(
      () async => await SharedPreferences.getInstance(),
      permanent: true,
    );
    Get.lazyPut(
      () => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      ),
      fenix: true,
    );

    // *-- IMAGE-PICKER --
    // Get.lazyPut(() => ImagePicker(), fenix: true);
    // Get.lazyPut(() => ImageCropper(), fenix: true);

    // *-- FILE-PICKER --
    // Get.lazyPut(() => FilePicker.platform, fenix: true);

    //! -- REQUESTS --

    Get.lazyPut(
      () => SecureStorageRequest(Get.find<FlutterSecureStorage>()),
      fenix: true,
    );
    Get.lazyPut(
      () => SharedPrefsRequest(Get.find<SharedPreferences>()),
      fenix: true,
    );
    // Get.lazyPut(() => HttpDioRequest(), fenix: true);
    // Get.lazyPut(() => FilesPickerRequest(), fenix: true);
    // Get.lazyPut(() => ImageRequest(), fenix: true);
    Get.lazyPut(() => SecurityRequest(), fenix: true);
    // Get.lazyPut(() => JwtRequest(), fenix: true);

    //! -- SERVICES --
    Get.lazyPut(
      () => AuthService(
        Get.find<SharedPrefsRequest>(),
        Get.find<SecureStorageRequest>(),
      ),
      fenix: true,
    );
    Get.lazyPut(() => HelloWorldService(), fenix: true);

    //! -- CONTROLLERS
    Get.put(
      ConnectivityController(internetChecker: Get.find<InternetConnection>()),
    );
    Get.put(
      HelloWorldController(helloWorldService: Get.find<HelloWorldService>()),
    );
  }
}
