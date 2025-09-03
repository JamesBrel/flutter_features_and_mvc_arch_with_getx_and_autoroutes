import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:terminate_restart/terminate_restart.dart';
import 'package:test_app_8/src/core/services/jwt/jwt_service.dart';
import 'package:test_app_8/src/core/services/update/update_service.dart';

import '../../../features/hello_world/controllers/hello_world_controller.dart';
import '../../../routes/app_router.dart';
import '../../services/cache/secure_storage_service.dart';
import '../../services/cache/shared_prefs_service.dart';
import '../../services/connection/connectivity_service.dart';
import '../../services/dio/http_dio_service.dart';
import '../../services/files_picker/files_picker_service.dart';
import '../../services/image/image_service.dart';
import '../../services/security/security_service.dart';
import '../../services/supabase/supabase_service.dart';
import '../../shared/constants/envs_const.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() async {
    //! -- INSTANCES --
    // Get.lazyPut<InternetConnection>(() => InternetConnection());
    Get.lazyPut<AppRouter>(() => AppRouter());
    // Get.lazyPut<FlutterSecureStorage>(
    //   () => FlutterSecureStorage(
    //     aOptions: AndroidOptions(encryptedSharedPreferences: true),
    //   ),
    // );
    // var _prefs = await SharedPreferences.getInstance();
    // Get.lazyPut<SharedPreferences>(() => _prefs);
    // Get.lazyPut<Dio>(
    //   () => Dio(
    //       BaseOptions(
    //         baseUrl: Envs.baseUrl,
    //         connectTimeout: const Duration(seconds: 30),
    //         receiveTimeout: const Duration(seconds: 30),
    //         validateStatus: (statusCode) => true,
    //       ),
    //     )
    //     // ..interceptors.add(
    //     //   DioCacheInterceptor(
    //     //     options: CacheOptions(
    //     //       store: MemCacheStore(),
    //     //       policy: CachePolicy.request,
    //     //       priority: CachePriority.normal,
    //     //       maxStale: const Duration(days: 7),
    //     //       allowPostMethod: true,
    //     //     ),
    //     //   ),
    //     // )
    //     ..interceptors.add(
    //       PrettyDioLogger(
    //         requestHeader: true,
    //         requestBody: true,
    //         responseBody: true,
    //         responseHeader: false,
    //         error: true,
    //         compact: true,
    //         maxWidth: 90,
    //         enabled: kDebugMode,
    //       ),
    //     ),
    // );
    // Get.lazyPut<FilePicker>(() => FilePicker.platform);
    // Get.lazyPut<ImagePicker>(() => ImagePicker());
    // Get.lazyPut<ImageCropper>(() => ImageCropper());
    // var _supabase = await Supabase.initialize(
    //   url:  Envs.supabaseUrl,
    //   anonKey:
    //       Envs.supabaseAnonKey,
    //   // authOptions: FlutterAuthClientOptions(localStorage: SupabaseSecurity()),
    // );
    // Get.lazyPut<Supabase>(() => _supabase);
    // Get.lazyPut<SupabaseClient>(() => Supabase.instance.client);
    // Get.lazyPut<ShorebirdUpdater>(() => ShorebirdUpdater());
    // Get.lazyPut<TerminateRestart>(() => TerminateRestart.instance);

    //! -- SERVICES --
    // Get.put<ConnectivityService>(
    //   ConnectivityService(Get.find<InternetConnection>()),
    // );
    // Get.put<SecureStorageService>(
    //   SecureStorageService(Get.find<FlutterSecureStorage>()),
    // );
    // Get.put<SharedPrefsService>(
    //   SharedPrefsService(Get.find<SharedPreferences>()),
    // );
    // Get.put<SecurityService>(SecurityService());
    // Get.put<SupabaseService>(SupabaseService(Get.find<SupabaseClient>()));
    // Get.put<FilesPickerService>(FilesPickerService(Get.find<FilePicker>()));
    // Get.put<ImageService>(
    //   ImageService(Get.find<ImagePicker>(), Get.find<ImageCropper>()),
    // );
    // Get.put<JwtService>(JwtService());
    // Get.put<HttpDioService>(HttpDioService(Get.find<Dio>()));
    // Get.put<UpdateService>(
    //   UpdateService(Get.find<ShorebirdUpdater>(), Get.find<TerminateRestart>()),
    // );

    //! -- CONTROLLERS
    Get.put<HelloWorldController>(HelloWorldController());
  }
}
