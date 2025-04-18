// todo : Remove the comment marks once to enable this file

// import '../../configs/cache_instance.dart';

// class StorageSecureGetRequest {
//  StorageGetRequest._();

//   static Future<Map<String, dynamic>> put({
//     required String key,
//   }) async {
//     if (await secureStorage.containsKey(key: key)) {
//       return await secureStorage
//           .read(key: key)
//           .then(
//             (valueData) => {
//               "status": true,
//               "data": valueData!,
//             },
//           )
//           .catchError((err) => {
//                 "status": false,
//               });
//     } else {
//       return {
//         "status": false,
//       };
//     }
//   }
// }
