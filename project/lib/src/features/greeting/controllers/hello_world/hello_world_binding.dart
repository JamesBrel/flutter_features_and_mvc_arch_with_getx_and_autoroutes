import 'package:get/get.dart';

import '../../repositories/system_say_hello_world_repo.dart';
import 'hello_world_controller.dart';

class HelloWorldBinding implements Bindings {
  @override
  void dependencies() {
    //! ---Repo---
    Get.lazyPut<SystemSayHelloWorldRepo>(
      () => SystemSayHelloWorldRepo(),
    );

    //! ---Controllers---
    Get.put<HelloWorldController>(HelloWorldController(
        systemSayHelloWorldRepo: Get.find<SystemSayHelloWorldRepo>()));
  }
}
