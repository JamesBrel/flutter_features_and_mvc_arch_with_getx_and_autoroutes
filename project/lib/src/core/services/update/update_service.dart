// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gadgets/gadgets.dart';
// import 'package:get/get.dart';
// import 'package:shorebird_code_push/shorebird_code_push.dart';
// import 'package:terminate_restart/terminate_restart.dart';
// import 'package:toastification/toastification.dart';

// import '../../../routes/app_router.dart';
// import '../../configs/lang_config/translate_keys.dart';
// import '../../shared/constants/utils_const.dart';

// class UpdateService extends GetxService {
//   final ShorebirdUpdater _updater;
//   final TerminateRestart _restarter;
//   final AppRouter _router;

//   UpdateService(this._updater, this._restarter, this._router);

//   @override
//   void onInit() async {
//     var _status = await _updater.checkForUpdate();
//     var _context = _router.navigatorKey.currentContext!;

//     if (_status == UpdateStatus.outdated) {
//       //show a dialog to inform the user that an update is available
//       AlertKit().choiceButtonsDialog(
//         context: _context,
//         title: TranslateKeys.updateAvailable.tr,
//         barrierDismissible: false,
//         titleStyle: TextTheme.of(_context).titleMedium,
//         content: Padding(
//           padding: EdgeInsets.all(8.0.r),
//           child: Text(
//             TranslateKeys.updateAvailableInfo.trParams({
//               "AppName": Utils.appName,
//             }),
//           ),
//         ),
//         actions: [
//           TextButton(
//             child: Text(TranslateKeys.updateIt.tr),
//             onPressed: () async {
//               try {
//                 // Perform the update
//                 toastification.show(
//                   type: ToastificationType.info,
//                   alignment: Alignment.bottomCenter,
//                   showProgressBar: true,
//                   closeButton: ToastCloseButton(
//                     showType: CloseButtonShowType.none,
//                   ),
//                   title: Text(TranslateKeys.updateIsDownloading.tr),
//                   autoCloseDuration: const Duration(seconds: 5),
//                 );
//                 await _updater.update();
//               } on UpdateException catch (error) {
//                 // Handle any errors that occur while updating.
//                 print('Error during update: $error');
//               } finally {
//                 AlertKit().choiceButtonsDialog(
//                   context: _context,
//                   title: TranslateKeys.appRestart.tr,
//                   barrierDismissible: false,
//                   titleStyle: TextTheme.of(_context).titleMedium,
//                   content: Padding(
//                     padding: EdgeInsets.all(8.0.r),
//                     child: Text(
//                       TranslateKeys.appRestartInfo.trParams({
//                         "AppName": Utils.appName,
//                       }),
//                     ),
//                   ),
//                   actions: [
//                     TextButton(
//                       child: Text('OK'),
//                       onPressed: () async {
//                         await _restarter.restartApp(
//                           options: const TerminateRestartOptions(
//                             terminate: true,
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 );
//               }
//             },
//           ),
//         ],
//       );
//     } else if (_status == UpdateStatus.upToDate) {
//       print('${Utils.appName} is up to date.');
//       return;
//     } else {
//       print('Failed to check for updates. Status: $_status');
//       return;
//     }
//     super.onInit();
//   }
// }
