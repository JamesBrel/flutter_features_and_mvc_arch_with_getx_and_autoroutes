import '../../configs/cache_instance.dart';

class StorageDeleteRequest {
  StorageDeleteRequest._();

  static void delete({
    required String key,
  }) =>
      CacheInstance.instance.boxStorage.remove(key);

  static void deleteAll() => CacheInstance.instance.boxStorage.erase();
}
