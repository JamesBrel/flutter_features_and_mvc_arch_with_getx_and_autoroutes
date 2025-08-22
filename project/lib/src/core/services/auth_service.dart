import '../tools/constants/envs_const.dart';
import '../tools/packages/cache/secure_storage_request.dart';
import '../tools/packages/cache/shared_prefs_request.dart';
import '../tools/variables/int_variable.dart';
import '../tools/variables/string_variable.dart';

/// @Project: [OuiTok],
/// @enterprise: [Ouitogether]
/// @description:  In this file, we have the following methods [isAuth]
/// @dev: [thecoder]
/// @version : 3.0.0
/// @createdAt: 29/12/2024
/// @updatedAt: 11/06/2025

class AuthService {
  final SharedPrefsRequest _sharedPrefsRequest;
  final SecureStorageRequest _secureStorageRequest;

  AuthService(this._sharedPrefsRequest, this._secureStorageRequest);

  /// Method: to check if the user is authenticated
  Future<bool> isAuth() async {
    try {
      var userId = _sharedPrefsRequest.get<int>(key: Envs.userId);
      var accessToken = await _secureStorageRequest.get(
        key: Envs.userAccessToken,
      );
      var refreshToken = await _secureStorageRequest.get(
        key: Envs.userRefreshToken,
      );

      if (userId != null && accessToken != null && refreshToken != null) {
        GlobalInt.userId = userId;
        GlobalString.userAccessToken = accessToken;
        GlobalString.userRefreshToken = refreshToken;
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return false;
    }
  }
}
