import 'package:dio/dio.dart';

abstract class NetworkClientInterface {
    Dio get baseDio;

    Dio customDio({
        String? serviceId,
        String? moduleId,
        String? subModuleId,
        String? screenId,
        String? customerId,
        required bool authorizatioRequired 
    });


  
} 