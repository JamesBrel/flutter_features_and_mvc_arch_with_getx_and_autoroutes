import 'package:get/get.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/global/controllers/connectivity_controller.dart';
import '../../repositories/system_say_hello_world_repo.dart';

class HelloWorldController extends GetxController {
  final SystemSayHelloWorldRepo _systemSayHelloWorldRepo;

  HelloWorldController({
    required SystemSayHelloWorldRepo systemSayHelloWorldRepo,
  }) : _systemSayHelloWorldRepo = systemSayHelloWorldRepo;

  var hello = "".obs;
  var connectivity = Get.find<ConnectivityController>();

  @override
  void onInit() {
    _sayHelloWorld();
    super.onInit();
  }

  void _sayHelloWorld() {
    Result<String, void> _result = _systemSayHelloWorldRepo.sayHelloWorld();
    _result.whenSuccess((success) => hello.value = success);
  }
}
