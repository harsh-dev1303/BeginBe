import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/model/accounts_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class AccountsDatasource {
  Future<AccountsModel> fetchAccountList();
}

class AccountsDatasourceImpl implements AccountsDatasource {
  final NetworkClientInterface networkClient;

  AccountsDatasourceImpl(this.networkClient);

  @override
  Future<AccountsModel> fetchAccountList() async {
    try {
      final dio = networkClient.customDio(authorizatioRequired: true);
      final response = await dio.get("/users");

      final accountResp = response.data;
      return AccountsModel.fromJson(accountResp);
    } on TypeError catch (e) {
      // Response structure mismatch
      print("fetch accounts type error: $e");
      throw ServiceFailure("unable to fetch accounts!");

    } on DioException catch (e) {
      print("fetch account dio error in datasource:${e.error.toString()}");

      // Let interceptor handle network issues
      throw NetworkHandledException();

    } on Exception catch (e) {
      // Any other unexpected issue
      print("fetch accounts exception:$e");
      throw ServiceFailure("unable to fetch data!");
    }
  }
}
