import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/home/data/models/services_model/service_centers_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class HomeDatasource {
  Future<ServiceCentersModel> getServiceCenters();
}

class HomeDatasourceImp implements HomeDatasource{

  final NetworkClientInterface networkClient;

  HomeDatasourceImp(this.networkClient);

  @override
  Future<ServiceCentersModel> getServiceCenters() async {
    try{
      final dio = networkClient.customDio(authorizatioRequired: true);
      final response = await dio.get("/services");
      print("services response in homeDatasource:$response");
      final servicesResJson = response.data;
      print("services resJson in homeDatasource:$servicesResJson");
      return ServiceCentersModel.fromJson(servicesResJson);
    }on TypeError catch(e){
       print("services Type Erro in homeDatasource:$e");
       throw ServiceFailure("unable to fetch services [type Error]");
    }on DioException catch(e){
       print("status Code for dioException in homeDatasource:${e.response?.statusCode}");
       print("response data for dioException in homeDatasource:${e.response?.data}");

       throw NetworkHandledException();
    }on Exception catch(e){
      print("services exeption Erro in homeDatasource:$e");
      throw ServiceFailure("unable to fetch services [exception]");
    }
  }
  
}



