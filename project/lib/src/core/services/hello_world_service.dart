import 'package:multiple_result/multiple_result.dart';

/// @Project: [Project_name],
/// @methods: [sayHelloWorld]
/// @devs: [dev_names]
/// @version : 1.0.0
/// @createdAt: ../../..
/// @updatedAt: #

class HelloWorldService {
  /// Note: This method return the salutation to world
  Result<String, void> sayHelloWorld() {
    return Result.success('dev');
  }
}
