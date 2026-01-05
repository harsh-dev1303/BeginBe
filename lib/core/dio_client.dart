import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/services.dart';

class DioClient {
  static final _dio =Dio(); //static <= so that single instance remain for whole app

  //SecurityContext is a low-level Dart class that controls:
  //Which certificates are trusted,How HTTPS handshake behaves
  static Future<SecurityContext> _globalContext(
    List<String> certificatePaths,
  ) async {
    SecurityContext securityContext = SecurityContext(withTrustedRoots: false);
    for (var path in certificatePaths) {
      final sslCert = await rootBundle.load(path);
      securityContext.setTrustedCertificatesBytes(sslCert.buffer.asUint8List());
    }

    return securityContext;
  }

  //Dio is an HTTP client independent of platform (Android, iOS, Web, Desktop), Different platforms have different low-level networking systems.
  //So Dio uses an abstraction called:HttpClientAdapter → A bridge between Dio and the platform’s actual HTTP engine
  //Without this, Dio would not know how to perform real network calls.

  //IOHttpClientAdapter = Dio’s adapter that uses the IO-based HttpClient (for mobile/desktop).
  //Dart has two main networking implementations:
  //Platform	                          Underlying Engine
  //Mobile                               dart:io → uses HttpClient
  //Desktop (Flutter runtime)             Browser HTTP APIs (XHR / Fetch)

  static Future<Dio> getClient(/*List<String> certPaths*/) async {
    // final sc = await _globalContext(certPaths);

    _dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final HttpClient httpClient = HttpClient(/*context: sc*/);
        return httpClient;
      },
    );

    return _dio;
  }
}
