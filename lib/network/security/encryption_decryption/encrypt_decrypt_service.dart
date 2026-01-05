import 'package:secure_fintech_bankingapp/network/security/encryption_decryption/encrypt_decrypt_service_impl.dart';

abstract class EncryptDecryptService {
  Future<EncryptedPayload> encryptData({required String plainText});
  Future<String> decryptData({required String cipherText,required String base64Iv});
}