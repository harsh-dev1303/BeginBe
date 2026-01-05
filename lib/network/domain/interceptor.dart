import 'package:dio/dio.dart';

abstract class InterceptorInterface{
  InterceptorsWrapper get interceptorsWrapper;

  void onRequest(RequestOptions options, RequestInterceptorHandler requestHandler);
  void onResponse(Response response, ResponseInterceptorHandler responseHandler);
  void onError(DioException error, ErrorInterceptorHandler errorHandler); 
}