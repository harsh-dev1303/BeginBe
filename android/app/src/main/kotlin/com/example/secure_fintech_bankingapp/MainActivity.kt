package com.example.secure_fintech_bankingapp

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity(){

    private val CHANNEL = "secure_crypto"
    private val cryptoManager = CryptoManager()

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler{call,result ->
            when(call.method){
                "encrypt" -> {
                    val plainText = call.argument<String>("PlainText")
                    if (plainText == null) {
                        result.error("INVALID", "PlainText missing", null)
                        return@setMethodCallHandler
                    }
                    result.success(cryptoManager.encrypt(plainText))
                }

                "decrypt" -> {
                    val iv = call.argument<String>("iv")
                    val payload = call.argument<String>("payload")
                    if (iv == null || payload == null) {
                        result.error("INVALID", "iv or payload missing", null)
                        return@setMethodCallHandler
                    }
                    result.success(cryptoManager.decrypt(iv,payload))
                }

                else -> {
                    result.notImplemented()
                }
            }

        }



    }
}