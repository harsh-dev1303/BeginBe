import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/dio_client.dart';
import 'package:secure_fintech_bankingapp/core/router/observer/screen_tracking_observer.dart';
import 'package:secure_fintech_bankingapp/core/url/base_url.dart';
import 'package:secure_fintech_bankingapp/network/data/cookie_manager.dart';
import 'package:secure_fintech_bankingapp/network/data/header_manager.dart';
import 'package:secure_fintech_bankingapp/network/data/network_interceptor.dart';
import 'package:secure_fintech_bankingapp/network/domain/cookie_manager_interface.dart';
import 'package:secure_fintech_bankingapp/network/domain/header_manager_interface.dart';
import 'package:secure_fintech_bankingapp/network/domain/interceptor.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';
import 'package:secure_fintech_bankingapp/network/security/encryption_decryption/locator_encrypt_decrypt/encrypt_decrypt_provider.dart';

class NetworkClient implements NetworkClientInterface {
  static NetworkClient? _instance;
  static late Dio _dio;
  final Ref ref;
  // final CookieManagerInterface cookieManager;
  final HeaderManagerInterface headerManager;
  final InterceptorInterface networkInterceptor;

  NetworkClient._(
    // this.cookieManager,
    this.headerManager,
    this.networkInterceptor,
    this.ref,
  );

  factory NetworkClient(Ref ref) {
    // ignore: prefer_conditional_assignment
    if (_instance == null) {
      ScreenTrackingObserver screenTrackingObserver = ref.watch(
        screenTrackingObserverProvider,
      );

      final encryptDecrypt = ref.read(encryptDecryptServiceLocatorProvider);

      _instance = NetworkClient._(
        // CookieManager(),
        HeaderManager(screenTrackingObserver),
        NetworkInterceptor(CookieManager(), ref,encryptDecrypt),
        ref,
      );
      //  _instance!._initialize();
    }
    return _instance!;
  }

  Future<void> initialize() async {
    print("dio client initialize called");
     _dio = await DioClient.getClient();

    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 5);
    _dio.options.receiveTimeout = Duration(seconds: 5);

    _dio.interceptors.add(networkInterceptor.interceptorsWrapper);

    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(request: true, responseBody: true));
    }
  }

  @override
  // TODO: implement baseDio
  Dio get baseDio => _dio;

  @override
  Dio customDio({
    String? serviceId,
    String? moduleId,
    String? subModuleId,
    String? screenId,
    String? customerId,
    required bool authorizatioRequired,
  }) {
    final dio = _dio;
    final latestAccessToken = ref.watch(authTokenProvider.future);

    dio.options.headers.addAll(headerManager.getHeaders(
      serviceId: serviceId,
      moduleId: moduleId,
      subModuleId: subModuleId,
      screenId: screenId,
      customerId: customerId
    ));

    if(authorizatioRequired && latestAccessToken != null){
      dio.options.headers['Authorization'] = 'Bearer $latestAccessToken';

    }

    return dio;
  }
}
