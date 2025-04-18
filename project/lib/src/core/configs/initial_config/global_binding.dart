import 'package:get/get.dart';

import '../../../features/greeting/controllers/hello_world/hello_world_binding.dart';
import '../../global/controllers/cache_controller.dart';
import '../../global/controllers/connectivity_controller.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    //! 🔹 Injection of functions used in the overall application
    Get.put<ConnectivityController>(ConnectivityController(), permanent: true);
    Get.put<CacheController>(CacheController(), permanent: true);

    //! 🔹 Injection of functions dependencies
    HelloWorldBinding().dependencies();
  }
}
