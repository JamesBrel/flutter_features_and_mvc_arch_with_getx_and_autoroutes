import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../core/services/say_hello_world_service.dart';
import '../../../core/tools/handlers/view_result.dart';

@injectable
class HelloWorldController extends GetxController {
  final SayHelloWorldService _sayHelloWorldService;

  HelloWorldController({required SayHelloWorldService sayHelloWorldService})
    : _sayHelloWorldService = sayHelloWorldService;

  var helloResult = ViewResult<String>.initial().obs;

  @postConstruct
  @override
  void onInit() {
    sayHelloWorld();
    super.onInit();
  }

  void sayHelloWorld() {
    helloResult.value = ViewResult.loading();
    Result<String, void> _result = _sayHelloWorldService.sayHelloWorld();
    _result.whenSuccess(
      (success) =>
          helloResult.value = ViewResult.success(SuccessModel(data: success)),
    );
  }
}
