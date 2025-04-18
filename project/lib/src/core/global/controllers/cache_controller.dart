import 'package:get/get.dart';

import '../../shared/constants/envs_const.dart';
import '../services/cache/configs/cache_instance.dart';

class CacheController extends GetxController {
  var _boxStorage = CacheInstance.instance.boxStorage;
  var accessToken = "".obs;

  @override
  void onInit() {
    _listenDataFromCache();
    super.onInit();
  }

  void _listenDataFromCache() {
    if (_boxStorage.hasData(Envs.accessToken)) {
      _boxStorage.listenKey(Envs.accessToken, (token) {
        accessToken.value = token ?? '';
      });
    }
  }
}
