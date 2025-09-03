// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';

// class SecureStorageService extends GetxService {
//   final FlutterSecureStorage _storage;

//   SecureStorageService(this._storage);

//   void put({required String key, required String data}) =>
//       _storage.write(key: key, value: data);

//   Future<String?> get({required String key}) async {
//     if (await _storage.containsKey(key: key)) {
//       return _storage.read(key: key).then((data) => data);
//     } else {
//       return null;
//     }
//   }

//   void deleteOne(String key) => _storage.delete(key: key);

//   void deleteAll() => _storage.deleteAll();
// }
