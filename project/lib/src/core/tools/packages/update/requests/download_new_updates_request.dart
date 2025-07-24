// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:terminate_restart/terminate_restart.dart';

// import '../../../../tools/constants/lang_const.dart';
// import '../configs/update_instance.dart';

// class DownloadNewUpdatesRequest {
//   DownloadNewUpdatesRequest._();

//   static void downloadTheUpdates() async {
//     Fluttertoast.showToast(
//       msg: Lang.updateIsDownloading.tr,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.black,
//       textColor: Colors.white,
//       fontSize: 14.0,
//     );

//     await Future.wait([
//       updater.downloadUpdateIfAvailable(),
//       Future<void>.delayed(const Duration(milliseconds: 300)),
//     ]);

//     var _isUpdateReadyToInstall = await updater.isNewPatchReadyToInstall();

//     if (_isUpdateReadyToInstall) {
//       Fluttertoast.showToast(
//         msg: Lang.restartApp.tr,
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.black,
//         textColor: Colors.white,
//         fontSize: 14.0,
//       ).whenComplete(() async {
//         await TerminateRestart.instance.restartApp(
//           options: const TerminateRestartOptions(terminate: true),
//         );
//       });
//     }
//   }
// }
