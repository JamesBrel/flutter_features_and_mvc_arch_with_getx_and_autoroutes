import 'package:get/get.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../core/services/hello_world_service.dart';
import '../../../core/tools/handlers/view_result.dart';

class HelloWorldController extends GetxController {
  final HelloWorldService _helloWorldService;

  HelloWorldController({required HelloWorldService helloWorldService})
    : _helloWorldService = helloWorldService;

  var helloResult = ViewResult<String>.initial().obs;

  @override
  void onInit() {
    helloWorld();
    super.onInit();
  }

  void helloWorld() {
    Result<String, void> _result = _helloWorldService.sayHelloWorld();
    _result.whenSuccess(
      (success) =>
          helloResult.value = ViewResult.success(SuccessModel(data: success)),
    );
  }
}
