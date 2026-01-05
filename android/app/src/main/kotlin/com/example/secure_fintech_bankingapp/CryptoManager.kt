package com.example.secure_fintech_bankingapp

import javax.crypto.Cipher
import android.util.Base64
import javax.crypto.spec.IvParameterSpec

class CryptoManager {

    fun encrypt(plainText:String) : Map<String,String>{
        val cipher = Cipher.getInstance("AES/CBC/PKCS7Padding")  //here it already has iv for cbc mode
        cipher.init(
            Cipher.ENCRYPT_MODE,
            CryptoKeyManager.getOrCreateSecretKey()
        )
        val iv = cipher.iv
        val cipherText = cipher.doFinal(plainText.toByteArray(Charsets.UTF_8))

        return mapOf(
            "iv" to Base64.encodeToString(iv,Base64.NO_WRAP),
            "payload" to Base64.encodeToString(cipherText,Base64.NO_WRAP)
        )

    }


    fun decrypt(ivBase64:String, payloadBase64 : String) : String{
        val cipher = Cipher.getInstance("AES/CBC/PKCS7Padding")
        val encryptedPayloadBytes = Base64.decode(payloadBase64, Base64.NO_WRAP)    //we got base64 converted to String (readable text) iv but actually it is in bytes
        val ivBytes = Base64.decode(ivBase64, Base64.NO_WRAP)          //we got base64 converted to String (readable text) payload but actually it is in bytes

        cipher.init(
            Cipher.DECRYPT_MODE,
            CryptoKeyManager.getOrCreateSecretKey(),
            IvParameterSpec(ivBytes)    //same iv used for encryption
        )

        val decryptedBytes = cipher.doFinal(encryptedPayloadBytes)     //aes decrypts in bytes (encrypts also in bytes only)

        return String(decryptedBytes,Charsets.UTF_8)

    }
}