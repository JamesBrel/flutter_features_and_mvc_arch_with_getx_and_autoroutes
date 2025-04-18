import '../../configs/cache_instance.dart';

class StorageGetRequest {
  StorageGetRequest._();

  static T? get<T>({
    required String key,
  }) =>
      CacheInstance.instance.boxStorage.read<T>(key);
}
