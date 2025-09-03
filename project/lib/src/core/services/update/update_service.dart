// import 'package:get/get.dart';
// import 'package:shorebird_code_push/shorebird_code_push.dart';
// import 'package:terminate_restart/terminate_restart.dart';

// class UpdateService extends GetxService {
//   final ShorebirdUpdater _updater;
//   final TerminateRestart _restarter;

//   UpdateService(this._updater, this._restarter);

//   @override
//   void onInit() async {
//     var status = await _updater.checkForUpdate();

//     if (status == UpdateStatus.outdated) {
//       try {
//         // Perform the update
//         await _updater.update();
//       } on UpdateException catch (error) {
//         // Handle any errors that occur while updating.
//         print('Error during update: $error');
//       } finally {
//         await _restarter.restartApp(
//           options: const TerminateRestartOptions(terminate: true),
//         );
//       }
//     } else if (status == UpdateStatus.upToDate) {
//       print('The app is up to date.');
//     } else {
//       print('Failed to check for updates. Status: $status');
//     }
//     super.onInit();
//   }
// }
