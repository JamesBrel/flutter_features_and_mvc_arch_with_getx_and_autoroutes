import '../../configs/cache_instance.dart';

class StoragePutRequest {
  StoragePutRequest._();

  static void put<T>({
    required String key,
    required T value,
  }) =>
      CacheInstance.instance.boxStorage.write(key, value);
}
