import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/data/models/categories_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class CategoryDatasource {
  Future<CategoriesModel> fetchCategories(String branchId);
}

class CategoryDatasourceImpl implements CategoryDatasource{
  
  final NetworkClientInterface networkClient;

  CategoryDatasourceImpl(this.networkClient);

  @override
  Future<CategoriesModel> fetchCategories(String branchId) async {
    try{
      final dio = networkClient.customDio(authorizatioRequired: true);
      final res = await dio.get("/categories?branchId=$branchId");
      final categoriesJson = res.data;
      return CategoriesModel.fromJson(categoriesJson);
      
    }on TypeError catch(e){
      print("category datasource type error - $e");
      throw ServiceFailure("unable to get categories!");
    }on DioException catch(e){
      print("category datasource dioException error - ${e.response?.data}");
      print("category datasource dioException error status code - ${e.response?.statusCode}");
      throw ServiceFailure(e.message.toString());
    }on Exception catch(e){
      print("category datasource exception:$e");
      throw ServiceFailure("unable to get categories!");
    }
  }
}