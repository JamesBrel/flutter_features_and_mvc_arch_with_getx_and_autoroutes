// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../features/greeting/controllers/hello_world_controller.dart'
    as _i156;
import '../../../features/splash/controllers/splash_controller.dart' as _i77;
import '../../../routes/app_router.dart' as _i1044;
import '../../services/auth_service.dart' as _i21;
import '../../services/say_hello_world_service.dart' as _i1015;
import '../../tools/controllers/connectivity_controller.dart' as _i227;
import '../../tools/packages/cache/secure_storage_request.dart' as _i748;
import '../../tools/packages/cache/shared_prefs_request.dart' as _i38;
import '../../tools/packages/instances.dart' as _i594;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final instances = _$Instances();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => instances.prefs,
      preResolve: true,
    );
    gh.factory<_i77.SplashController>(() => _i77.SplashController());
    gh.singleton<_i1015.SayHelloWorldService>(
      () => _i1015.SayHelloWorldService(),
    );
    gh.lazySingleton<_i161.InternetConnection>(() => instances.internetChecker);
    gh.lazySingleton<_i1044.AppRouter>(() => instances.appRouter);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => instances.secureStorage);
    gh.singleton<_i38.SharedPrefsRequest>(
      () => _i38.SharedPrefsRequest(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i748.SecureStorageRequest>(
      () => _i748.SecureStorageRequest(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i156.HelloWorldController>(
      () => _i156.HelloWorldController(
        sayHelloWorldService: gh<_i1015.SayHelloWorldService>(),
      )..onInit(),
    );
    gh.singleton<_i227.ConnectivityController>(
      () => _i227.ConnectivityController(
        internetChecker: gh<_i161.InternetConnection>(),
      )..onInit(),
    );
    gh.singleton<_i21.AuthService>(
      () => _i21.AuthService(
        gh<_i38.SharedPrefsRequest>(),
        gh<_i748.SecureStorageRequest>(),
      ),
    );
    return this;
  }
}

class _$Instances extends _i594.Instances {}
