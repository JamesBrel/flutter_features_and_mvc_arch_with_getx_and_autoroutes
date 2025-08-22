import 'package:flutter_test/flutter_test.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:test_app_8/src/core/services/hello_world_service.dart';

/// @testers: [tester_names]
/// @version : 1.0.0
/// @createdAt: ../../..
/// @updatedAt: #

void main() {
  var _helloWorldService = HelloWorldService();

  group(" 'sayHelloWorld' Method ", () {
    test("System should return Result<String, void> with success", () {
      // Arrange
      // todo :  implement a mock service to test the method if needed

      // Act
      var _result = _helloWorldService.sayHelloWorld();

      // Assert
      expect(_result, Result.success("dev"));
    });
  });
}
