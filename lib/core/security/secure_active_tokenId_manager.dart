import 'package:secure_fintech_bankingapp/core/security/secure_storage.dart';

class SecureActiveTokenIdManager {
  SecureActiveTokenIdManager._();

  static const _tokenIdKey = "token_id";

  static Future<void> writeTokenId({
    required String tokenId
  }) async {
    await SecureStorage.instance.write(key: _tokenIdKey,value: tokenId);
  }

  static Future<String?> readTokenId() async {
    final tokenId = await SecureStorage.instance.read(key: _tokenIdKey);
    return tokenId;
  }

  static Future<void> deleteTokenId() async {
    await SecureStorage.instance.delete(key: _tokenIdKey);
  }

}