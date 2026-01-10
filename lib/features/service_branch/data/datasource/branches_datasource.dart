import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/data/models/branches_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class BranchesDatasource {
  Future<BranchesModel> branches(String serviceId);
}


class BranchesDatasourceImpl implements BranchesDatasource{

  final NetworkClientInterface networkClient;

  BranchesDatasourceImpl(this.networkClient);

  @override
  Future<BranchesModel> branches(String serviceId) async {
    try{
      final dio = networkClient.customDio(authorizatioRequired: true);
      final response = await dio.get("/branches?serviceId=$serviceId");
      final resJson = response.data;
      return BranchesModel.fromJson(resJson);
    }on TypeError catch(e){
      print("branches datasource Type error - $e");
       throw ServiceFailure(e.toString());
    }on DioException catch(e){
       print("status Code for dioException in branches Datasource:${e.response?.statusCode}");
       print("response data for dioException in branches Datasource:${e.response?.data}");

       throw ServiceFailure(e.toString());
    }on Exception catch(e){
       print("branches datasource excetion error - $e");
       throw ServiceFailure(e.toString());
    }
  }
  
}