// import 'package:dio/dio.dart';

// class HttpDioRequest {
//   final Dio _dio;

//   HttpDioRequest(this._dio);

//   Future<Response<T>> post<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     Object? content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.post<T>(
//         api,
//         data: content,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );
//       return response;
//     } on DioException catch (e) {
//       print(e);
//       throw DioException;
//     } catch (_) {
//       rethrow;
//     }
//   }

//   Future<Response<T>> get<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.get<T>(
//         api,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );
//       return response;
//     } on DioException {
//       throw DioException;
//     } catch (_) {
//       rethrow;
//     }
//   }

//   Future<Response<T>> put<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     Object? content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.put<T>(
//         api,
//         data: content,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );
//       return response;
//     } on DioException {
//       throw DioException;
//     } catch (_) {
//       rethrow;
//     }
//   }

//   Future<Response<T>> patch<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     required Object content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.patch<T>(
//         api,
//         data: content,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );
//       return response;
//     } on DioException {
//       throw DioException;
//     } catch (_) {
//       rethrow;
//     }
//   }

//   Future<Response<T>> delete<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.delete<T>(
//         api,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );
//       return response;
//     } on DioException {
//       throw DioException;
//     } catch (_) {
//       rethrow;
//     }
//   }
// }
