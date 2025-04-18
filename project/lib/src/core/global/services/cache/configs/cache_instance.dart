// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:get_storage/get_storage.dart';

class CacheInstance {
  static CacheInstance get instance => CacheInstance();

  var boxStorage = GetStorage();

// var secureStorage = const FlutterSecureStorage(
//   aOptions: AndroidOptions(
//     encryptedSharedPreferences: true,
//   ),
// );
}
