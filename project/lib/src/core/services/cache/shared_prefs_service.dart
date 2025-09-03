// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefsService extends GetxService {
//   final SharedPreferences _prefs;

//   SharedPrefsService(this._prefs);

//   void put<T>({required String key, required T data}) async {
//     switch (T) {
//       case String:
//         await _prefs.setString(key, data as String);
//         break;
//       case bool:
//         await _prefs.setBool(key, data as bool);
//         break;
//       case int:
//         await _prefs.setInt(key, data as int);
//       case double:
//         await _prefs.setDouble(key, data as double);
//         break;
//       case const (List<String>):
//         await _prefs.setStringList(key, data as List<String>);
//         break;
//       default:
//         throw ArgumentError('Unsupported type: $T');
//     }
//   }

//   T? get<T>({required String key}) {
//     if (_prefs.containsKey(key)) {
//       switch (T) {
//         case String:
//           return _prefs.getString(key) as T;
//         case bool:
//           return _prefs.getBool(key) as T;
//         case int:
//           return _prefs.getInt(key) as T;
//         case double:
//           return _prefs.getDouble(key) as T;
//         case const (List<String>):
//           return _prefs.getStringList(key) as T;
//       }
//     } else {
//       return null;
//     }
//   }

//   void delete({required String key}) => _prefs.remove(key);
// }
