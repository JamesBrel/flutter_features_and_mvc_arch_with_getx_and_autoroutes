// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

// class ConnectivityService extends GetxService {
//   final InternetConnection _internetChecker;

//   ConnectivityService(this._internetChecker);

//   var isConnected = false.obs;
//   late StreamSubscription<InternetStatus> subscription;

//   @override
//   void onInit() async {
//     var initialStatus = await _internetChecker.internetStatus;
//     updateInternetStatus(initialStatus);
//     _internetChecker.onStatusChange.listen(
//       (InternetStatus status) => updateInternetStatus(status),
//     );
//     super.onInit();
//   }

//   void updateInternetStatus(InternetStatus result) {
//     var newValue = result == InternetStatus.connected;
//     if (isConnected.value != newValue) {
//       isConnected.value = newValue;
//     }
//   }

//   Stream<bool> get connectivityStream {
//     var controller = StreamController<bool>();
//     isConnected.listen((value) {
//       controller.add(value);
//     });
//     // Écoute les changements futurs
//     controller.onCancel = () {
//       isConnected.close();
//     };
//     return controller.stream;
//   }
// }
