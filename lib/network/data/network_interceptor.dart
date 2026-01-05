import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/src/dio_exception.dart';
import 'package:dio/src/dio_mixin.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
import 'package:secure_fintech_bankingapp/core/url/base_url.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';
import 'package:secure_fintech_bankingapp/network/domain/cookie_manager_interface.dart';
import 'package:secure_fintech_bankingapp/network/domain/interceptor.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';
import 'package:secure_fintech_bankingapp/network/security/encrypt_config.dart';
import 'package:secure_fintech_bankingapp/network/security/encryption_decryption/encrypt_decrypt_service.dart';
import 'package:secure_fintech_bankingapp/network/state/network_error.dart';

class NetworkInterceptor implements InterceptorInterface {
  final CookieManagerInterface cookieManager;
  final EncryptDecryptService encryptDecryptService;
  final Ref ref;

  NetworkInterceptor(this.cookieManager, this.ref, this.encryptDecryptService);

  @override
  InterceptorsWrapper get interceptorsWrapper => InterceptorsWrapper(
    onRequest: onRequest,
    onResponse: onResponse,
    onError: onError,
  );

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler requestHandler,
  ) {
    if (!ref.read(networkLoadingProvider)) {
      ref.read(networkLoadingProvider.notifier).state = true;
    }
    final commonHeaders = {
      'Accept': 'application/json',
      'Content-type': 'application/json; charset=utf-8',
      // 'Accept-Language': options.headers['Accept-Language'] ?? localeId,
      'channel': 'MB',
      // 'unit': options.headers['unit'] ?? unit,
      'x-api-key': reqResApiKey,
    };

    options.headers.addAll(commonHeaders);
    options.headers.addAll({'cookie': cookieManager.generateCookieHeader()});

    // // request body, or sending data is encrypted here
    // if (options.data != null && _isEncryptionRequired(options.uri.path)) {
    //   final jsonString = jsonEncode(options.data);
    //   final encryptedData = encryptDecryptService.encryptData(plainText: jsonString);
    //   options.data = {
    //     "encData": {
    //       "payload": encryptedData.encryptedData,
    //       "iv" : encryptedData.iv,
    //       "algo": algo,
    //       "version": ver,
    //       "mode" : mode
    //     },
    //   };
    // }

    requestHandler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler responseHandler,
  ) {
    ref.read(networkLoadingProvider.notifier).state = false;

    // // response body, or coming data is decrypted here
    // if (response.data is Map && _isDecryptionRequired(response.requestOptions.uri.path) /*&& response.data['payload'] != null*/ ) {
    //   final encryptedData = response.data['payload'];
    //   final base64Iv= response.data['iv'];
    //   final decryptData = encryptDecryptService.decryptData(
    //     cipherText: encryptedData, base64Iv: base64Iv,
    //   );
    //   response.data = jsonDecode(decryptData);
    // }

    cookieManager.updateCookie(response);
    responseHandler.next(response);
  }

  @override
  Future<void> onError(
    DioException error,
    ErrorInterceptorHandler errorHandler,
  ) async {
    ref.read(networkLoadingProvider.notifier).state = false;

    if (error.type == DioExceptionType.connectionError) {
      //no internet
      print("no internet error in onErrro");
      ref.read(networkErrorProvider.notifier).state =
          NetworkErrorType.noInternet;
    } else if (error.type == DioExceptionType.receiveTimeout || //timeout
        error.type == DioExceptionType.sendTimeout) {
      print("timeout error in onErrro");
      ref.read(networkErrorProvider.notifier).state = NetworkErrorType.timeout;
    } else if (error.response?.statusCode == 401) {
      final requestOptions = error.requestOptions;

      // Prevent infinite loop
      if (requestOptions.extra['retry'] == true) {
        await _forceLogout();
        return errorHandler.reject(error);
      }
      //unauthorized user
      print("unauthorised in onErrro");
      try {
        // final token = GlobalCache.getInstance.getToken();
        final refToken = await SecureTokenManager.getRefreshToken();

        if (refToken == null) {
          await _forceLogout();
          return;
        }

        final newtoken = await _refreshToken(refToken);

        if (newtoken == null) {
          await _forceLogout();
          return;
        }

        await SecureTokenManager.saveToken(authToken: newtoken);

        final requestOptions = error
            .requestOptions; //request option is our request which get failed with all its config
        requestOptions.extra['retry'] = true;
        requestOptions.headers['Authorization'] = 'Bearer ${newtoken.atkn}';

        final response = await Dio().fetch(requestOptions);
        return errorHandler.resolve(response);
      } catch (_) {
        await _forceLogout();
        return errorHandler.reject(error);
      }
    } else if (error.response != null) {
      //server error
      print("server error in onErrro");
      ref.read(networkErrorProvider.notifier).state =
          NetworkErrorType.serverError;
    } else {
      print("unknown in onErrro");
      ref.read(networkErrorProvider.notifier).state = //unknown error
          NetworkErrorType.unknown;
    }

    errorHandler.next(error);
  }

  Future<AuthToken?> _refreshToken(String refreshToken) async {
    try {
      final dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {'content-type': 'application/json'},
        ),
      );

      final response = await dio.post(
        '/refresh-token', //<= '/refresh-token' example/dummy path as reqres don't provide refresh token option
        data: {'refreshToken': refreshToken},
      );

      return AuthToken(
        atkn: response.data['accessToken'],
        refreshToken: response.data['refreshToken'],
      );
    } catch (_) {
      return null;
    }
  }

  Future<void> _forceLogout() async {
    // await GlobalCache.getInstance.setToken(authToken: null);
    await SecureTokenManager.deleteTokens();
    ref.read(authNotifierProvider.notifier).checkSession();
    ref.read(networkErrorProvider.notifier).state =
        NetworkErrorType.unauthorized;
  }

  bool _isEncryptionRequired(String path) {
    return !(path.endsWith('/login') ||
        path.endsWith('/signup') ||
        path.endsWith('/refresh-token'));
  }

  bool _isDecryptionRequired(String path) {
    return !(path.endsWith('/login') ||
        path.endsWith('/signup') ||
        path.endsWith('/refresh-token'));
  }
}
