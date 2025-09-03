// import 'dart:typed_data';

// import 'package:get/get.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// // import 'supabase_security.dart';

// class SupabaseService extends GetxService {
//   final SupabaseClient _client;

//   SupabaseService(this._client);

//   void upload() {
//     // _client.from('table').insert({'column': 'value'}).execute();
//   }

//   Future<Uint8List> download({
//     required String folderName,
//     required String path,
//   }) async {
//     try {
//       var response = await _client.storage.from(folderName).download(path);
//       return response;
//     } catch (_) {
//       rethrow;
//     }
//   }
// }
