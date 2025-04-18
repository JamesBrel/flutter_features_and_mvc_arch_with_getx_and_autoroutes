import 'package:multiple_result/multiple_result.dart';

import '../../../core/shared/constants/lang_const.dart';

/// @Project: [Project_name],
/// @enterprise: [Organisation_name]
/// @description:  In this file, we have the following methods [sayHelloWorld]
/// @dev: [dev_names]
/// @version : 1.0.0
/// @createdAt: ../../..
/// @updatedAt: #

class SystemSayHelloWorldRepo {
  /// Note: This method return the salutation to world

  Result<String, void> sayHelloWorld() {
    return Result.success(Lang.welcome);
  }
}
