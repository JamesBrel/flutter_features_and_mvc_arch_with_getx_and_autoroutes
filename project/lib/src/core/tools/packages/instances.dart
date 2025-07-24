// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../constants/envs_const.dart';

import '../../../routes/app_router.dart';

@module
abstract class Instances {
  //*-----CONNECTIVITY-INSTANCE----
  @lazySingleton
  InternetConnection get internetChecker => InternetConnection();

  //*----AUTO-ROUTES-INSTANCE----
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  //*----DIO-INSTANCE----
  // @lazySingleton
  // Dio get dio => Dio(
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
  // );

  //*----CACHE-INSTANCE----
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  // *----IMAGE-PICKER-INSTANCE----
  // @lazySingleton
  // ImagePicker get imagePicker => ImagePicker();
  // @lazySingleton
  // ImageCropper get imageCropper => ImageCropper();

  // *----FILE-PICKER-INSTANCE----
  // @lazySingleton
  // FilePicker get filePicker => FilePicker.platform;
}
