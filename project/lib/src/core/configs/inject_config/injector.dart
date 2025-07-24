import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

var getIt = GetIt.instance;
@InjectableInit(
  generateForDir: ["lib", "test"],
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> dependencies() async => await getIt.init();
