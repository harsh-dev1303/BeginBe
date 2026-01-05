import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/network/security/encryption_decryption/encrypt_decrypt_service.dart';
import 'package:secure_fintech_bankingapp/network/security/encryption_decryption/encrypt_decrypt_service_impl.dart';

part 'encrypt_decrypt_provider.g.dart';

@riverpod
EncryptDecryptService encryptDecryptServiceLocator(EncryptDecryptServiceLocatorRef ref){

  return EncryptDecryptServiceImpl();
  
}