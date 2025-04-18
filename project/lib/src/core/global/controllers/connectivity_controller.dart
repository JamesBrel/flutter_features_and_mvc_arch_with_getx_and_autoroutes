import 'dart:async';

import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class ConnectivityController extends GetxController {
  var _internetChecker = InternetConnection();
  late StreamSubscription<InternetStatus> _subscription;
  var isConnected = false.obs;

  @override
  void onInit() {
    _subscription = _internetChecker.onStatusChange
        .listen((InternetStatus status) => updateInternetStatus(status));
    super.onInit();
  }

  void updateInternetStatus(InternetStatus result) {
    switch (result) {
      case InternetStatus.connected:
        isConnected.value = true;
        break;
      case InternetStatus.disconnected:
        isConnected.value = false;
        break;
    }
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }
}
