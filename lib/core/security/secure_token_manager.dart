import 'package:secure_fintech_bankingapp/core/security/secure_storage.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';

class SecureTokenManager {
  SecureTokenManager._();

  static const _accessTokenKey = "access_token";
  static const _refreshTokenKey = "refresh_token";

  static Future<void> saveToken({
    required AuthToken authToken
  }) async {
    await SecureStorage.instance.write(key: _accessTokenKey, value: authToken.atkn);
    await SecureStorage.instance.write(key: _refreshTokenKey, value: authToken.refreshToken);
  }

  static Future<String?> getAccessToken() async {
     final accessToken = await SecureStorage.instance.read(key: _accessTokenKey);
     return accessToken;
  }

  static Future<String?> getRefreshToken() async {
     final refreshToken = await SecureStorage.instance.read(key: _refreshTokenKey);
     return refreshToken;
  }

  static Future<void> deleteTokens() async {
    await SecureStorage.instance.clear();
  }


}