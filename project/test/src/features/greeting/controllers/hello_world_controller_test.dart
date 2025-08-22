import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:test_app_8/src/core/services/hello_world_service.dart';
import 'package:test_app_8/src/features/greeting/controllers/hello_world_controller.dart';

/// @testers: [tester_names]
/// @version : 1.0.0
/// @createdAt: ../../..
/// @updatedAt: #

class MockHelloWorldService extends Mock implements HelloWorldService {}

void main() {
  var _mockHelloWorldService = MockHelloWorldService();
  var _helloWorldController = HelloWorldController(
    helloWorldService: _mockHelloWorldService,
  );

  group(" 'helloWorld' Method ", () {
    test("System should return Result<String, void> with success", () {
      // Arrange
      when(
        () => _mockHelloWorldService.sayHelloWorld(),
      ).thenReturn(Result.success('dev'));

      // Act
      _helloWorldController.helloWorld();

      // Assert
      expect(_helloWorldController.helloResult.value.successModel!.data, 'dev');
      verify(() => _mockHelloWorldService.sayHelloWorld()).called(1);
    });
  });
}
