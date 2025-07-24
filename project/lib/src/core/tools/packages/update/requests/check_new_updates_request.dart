// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import '../../../../tools/constants/lang_const.dart';
// import '../configs/update_instance.dart';
// import 'download_new_updates_request.dart';

// class CheckNewUpdatesRequest {
//   CheckNewUpdatesRequest._();

//   static void checkTheUpdates() async {
//     var isNewPatch = await updater.isNewPatchAvailableForDownload();
//     if (isNewPatch) {
//       Fluttertoast.showToast(
//         msg: Lang.updateAvailable.tr,
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.black,
//         textColor: Colors.white,
//         fontSize: 14.0,
//       ).whenComplete(() {
//         DownloadNewUpdatesRequest.downloadTheUpdates();
//       });
//     }
//   }
// }
