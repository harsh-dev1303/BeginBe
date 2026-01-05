import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage{
  SecureStorage._();

  static final instance = SecureStorage._();  //singleton class and only one instance to access this class

  static final _storage =FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock)
  );


  Future<void> write({
    required String key,
     String? value
  }) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read({required String key}) async {
     final value = await _storage.read(key: key);
     return value;
  }

  Future<void> delete({required String key}) async {
     await _storage.delete(key: key);
  }

  Future<void> clear() async {
    await _storage.deleteAll();

  }


}