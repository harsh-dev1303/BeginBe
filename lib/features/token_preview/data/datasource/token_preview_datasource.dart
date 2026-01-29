import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/data/model/specific_date_token.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/data/model/token_preview_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class TokenPreviewDatasource {
  Future<TokenPreviewModel> fetchTokenPreview(String counterId);
}

class TokenPreviewDatasourceImpl implements TokenPreviewDatasource{
  
  final NetworkClientInterface networkClient;

  TokenPreviewDatasourceImpl(this.networkClient);


  @override
  Future<TokenPreviewModel> fetchTokenPreview(String counterId) async {
    try{
      final dateFormatter = DateFormat('dd MMM yyyy');
      final DateTime today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
      final DateTime tomorrow = today.add(Duration(days: 1));
      final DateTime dayAfterTomorrow = today.add(Duration(days: 2));
      //networking
      await Future.delayed(const Duration(seconds: 4));
      return TokenPreviewModel(
        categoryId: '692a533c24e564800996f046', 
        categoryName: 'Eye Ward', 
        branchName: 'Mahatama Gandhi', 
        preview: [
          SpecificDateToken(
            date: dateFormatter.format(today), 
            queueLength: "12", 
            peopleAhead: "10", 
            estimatedWaitTime: "25"
            ),
          SpecificDateToken(
            date: dateFormatter.format(tomorrow), 
            queueLength: "8", 
            peopleAhead: "6", 
            estimatedWaitTime: "18"
            ),
          SpecificDateToken(
            date: dateFormatter.format(dayAfterTomorrow), 
            queueLength: "5", 
            peopleAhead: "3", 
            estimatedWaitTime: "12"
            ),

        ]
        
      );


    }on TypeError catch(e){
      print("Type error - $e");
      throw ServiceFailure("unable to get token preview-type erro");
    }on DioException catch(e){
      print("status Code in token preview Datasource:${e.response?.statusCode}");
      print("response data in token preview Datasource:${e.response?.data}");
      throw ServiceFailure("unable to get token preview-dioexception");
    }on Exception catch(e){
      print("Exception error - $e");
      throw ServiceFailure("unable to get token preview-Exception");
    }
    
  }
  
}