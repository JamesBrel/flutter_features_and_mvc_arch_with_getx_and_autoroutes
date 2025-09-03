// todo : Remove the comment marks once to enable this file 

// import 'dart:io';

// import 'package:app_test/src/shared/constants/envs_const.dart';
// import 'package:flutter/foundation.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// import '../../../constants/string_const.dart';

// class IsarConfig {
//  IsarConfig._();

//   /// Note : Dans cette fonction , j'initialise la Base de Donnée Isar pour Android
//   static Future<void> isarAndroidInit() async {
//     try {
//       String pathDir = (await getExternalStorageDirectory())!.path;
//       Directory _directory = Directory("$pathDir/$app ${EnvPath.env}");
//       await _directory.create(recursive: true).then((_directoryCreated) async {
//         await Isar.open(
//           [],
//           directory: _directoryCreated.path,
//           name: EnvPath.instanceName,
//           inspector: kDebugMode ? true : false,
//         );
//       });
//     } catch (error) {
//       debugPrint(error.toString());
//     }
//   }

//   /// Note : Dans cette fonction , j'initialise la Base de Donnée Isar pour Windows
//   static Future<void> isarWindowsInit() async {
//     try {
//       String pathDir = (await getApplicationDocumentsDirectory()).path;
//       Directory _directory = Directory("$pathDir/$app ${EnvPath.env}");
//       _directory.create(recursive: true);

//       await Isar.open(
//         [],
//         directory: _directory.path,
//         name: EnvPath.instanceName,
//         inspector: kDebugMode ? true : false,
//       );
//     } catch (error) {
//       debugPrint(error.toString());
//     }
//   }
// }
