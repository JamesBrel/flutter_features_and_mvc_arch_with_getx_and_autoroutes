// import 'package:dio/dio.dart';

// import '../configs/dio_instance.dart';

// class HttpGetRequest {
//   HttpGetRequest._();

//   static Future<Map<String, dynamic>> get<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     ResponseType responseType = ResponseType.json,
//   }) {
//     return dio
//         .get<T>(
//           api,
//           options: Options(
//             headers: headers,
//             responseType: responseType,
//           ),
//           queryParameters: queryParameters,
//         )
//         .then((response) => {
//               "status": true,
//               "response": response,
//             })
//         .onError<DioException>(
//           (error, stackTrace) => {
//             "status": false,
//             "error": error,
//           },
//         );
//   }
// }
