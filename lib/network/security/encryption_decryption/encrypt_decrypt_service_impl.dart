// import 'dart:convert';

// import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:secure_fintech_bankingapp/network/security/encryption_decryption/encrypt_decrypt_service.dart';

class EncryptDecryptServiceImpl implements EncryptDecryptService {
  
  // //it’s just a hardcoded, demo key. AES-256 requires 256 bits ,1 character (UTF-8 ASCII) = 1 byte = 8 bits,32 characters × 8 bits = 256 bits
  // //Key.fromUtf8() takes a String Converts it to UTF-8 bytes Wraps it as an AES key object for ex:Key.fromUtf8("abcd") → [97, 98, 99, 100]
  //  static final _key = Key.fromUtf8(
  //   '0123456789abcdef0123456789abcdef', // 32 chars = 256 bit
  // );

  //  static final _iv = IV.fromSecureRandom(16);   // 16 bytes IV, "IV" <- initialization vector

  // final _encrypter = Encrypter(
  //   AES(_key,mode: AESMode.cbc,padding: 'PKCS7')
  // );
  static const _channel = MethodChannel("secure_crypto");

  @override
  Future<EncryptedPayload> encryptData({required String plainText}) async {
    final cipherPayload = await _channel.invokeMethod('encrypt',{
       "PlainText" : plainText
    });

    return EncryptedPayload(
      iv:cipherPayload['iv'] , 
      encryptedData: cipherPayload['payload']
    );

    

    // final iv = IV.fromSecureRandom(16);    //this is inside methode because it should be unique per request, encryption

    // //AES encrypts in bytes thats why we used base64 to convert byte into readable text (String) to send over network
    // final encryptedData = _encrypter.encrypt(plainText,iv: iv);     // this iv we have to send to server so that same iv we get from server response and use that for decryption
    // return EncryptedPayload(iv: iv.base64, encryptedData: encryptedData.base64);
    // // final encodedData = base64Encode(utf8.encode(data));
    // // return encodedData;
  }

  @override
  Future<String> decryptData({required String cipherText, required String base64Iv}) async {
    final decryptedPayload = await _channel.invokeMethod("decrypt",{
      "iv" : base64Iv,
      "payload" : cipherText
    });

    return decryptedPayload;
    //  final iv = IV.fromBase64(base64Iv);
    
    //  final decrypted = _encrypter.decrypt64(cipherText, iv: iv);
    //  return decrypted;

    // // // final decodedData = utf8.decode(base64Decode(data));
    // // // return decodedData;
  }
}


class EncryptedPayload{
  final String iv;
  final String encryptedData;

  EncryptedPayload({required this.iv, required this.encryptedData});

}