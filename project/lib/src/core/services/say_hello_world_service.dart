import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

/// @Project: [Project_name],
/// @enterprise: [Organisation_name]
/// @description:  In this file, we have the following methods [sayHelloWorld]
/// @dev: [dev_names]
/// @version : 1.0.0
/// @createdAt: ../../..
/// @updatedAt: #

@singleton
class SayHelloWorldService {
  /// Note: This method return the salutation to world

  Result<String, void> sayHelloWorld() {
    return Result.success('dev');
  }
}
