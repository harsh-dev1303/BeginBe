import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/model/account_details_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class AccountDetailsDatasource {
    Future<AccountDetailsModel> fetchAccountDetails(int userId);
}

class AccountDetailsDatasourceImpl implements AccountDetailsDatasource{

  final NetworkClientInterface networkClient;

  AccountDetailsDatasourceImpl(this.networkClient);

  @override
  Future<AccountDetailsModel> fetchAccountDetails(int userId) async {
    try{
      final dio = networkClient.customDio(authorizatioRequired: true);
      final response = await dio.get("/users/$userId");
      final responseJson = response.data;
      return AccountDetailsModel.fromJson(responseJson);
    }on TypeError catch(e){
      print("type error fetch account - $e");
      throw ServiceFailure("unable to fetch account (type error)");
    }on DioException catch(e){
      print("DioException fetch account :${e.response?.statusCode}");
      print("DioException fetch account :${e.response?.data}");
      print("DioException fetch account :${e.response}");
      throw NetworkHandledException();
    }on Exception catch(e){
      print("exception fetch error - $e");
      throw ServiceFailure("unable to fetch account (exception)");

    }
    
  }
  
}