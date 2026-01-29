import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/token_confirmation_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class TokenConfirmationDatasource {
  Future<TokenConfirmationModel> fetchTokenConfirmation(
    String categoryId,
    String date,
  );
}

class TokenConfirmationDatasourceImpl implements TokenConfirmationDatasource {
  final NetworkClientInterface networkClientInterface;
  
  TokenConfirmationDatasourceImpl(this.networkClientInterface);

  @override
  Future<TokenConfirmationModel> fetchTokenConfirmation(
    String categoryId,
    String date,
  ) async {
    try {
      final dateFormatter = DateFormat('dd MMM yyyy');
      final DateTime today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
      final DateTime tomorrow = today.add(Duration(days: 1));
      final DateTime dayAfterTomorrow = today.add(Duration(days: 2));

      await Future.delayed(const Duration(seconds: 3));
      late final TokenConfirmationModel tokenConfirmationModel ;
      if(date == dateFormatter.format(today)){
        tokenConfirmationModel = TokenConfirmationModel(
          tokenNumber: 'TN-${DateTime.now().day}-${DateTime.now().month}-eyeward',
          categoryId: '692a533c24e564800996f046',
          categoryName: 'Eye Ward',
          branchName: 'Mahatama Gandhi',
          estimatedWaitTime: '25',
          peopleAhead: '10',
          date: date
        );
      }else if(date == dateFormatter.format(tomorrow)){
        tokenConfirmationModel= TokenConfirmationModel(
          tokenNumber: 'TN-${(DateTime.now().day) + 1}-${DateTime.now().month}-eyeward',
          categoryId: '692a533c24e564800996f046',
          categoryName: 'Eye Ward',
          branchName: 'Mahatama Gandhi',
          estimatedWaitTime: '18',
          peopleAhead: '6',
          date: date
        );
      }else if(date == dateFormatter.format(dayAfterTomorrow)){
        tokenConfirmationModel = TokenConfirmationModel(
          tokenNumber: 'TN-${(DateTime.now().day) + 2}-${DateTime.now().month}-eyeward',
          categoryId: '692a533c24e564800996f046',
          categoryName: 'Eye Ward',
          branchName: 'Mahatama Gandhi',
          estimatedWaitTime: '12',
          peopleAhead: '3',
          date: date
        );

      }
      return tokenConfirmationModel;
    } on TypeError catch (e) {
      print("type error in token confirmation - $e");
      throw ServiceFailure("unable to get token Confirmation! - type error");
    } on DioException catch (e) {
      print(
        "dio exception status code in token confirmation - ${e.response?.statusCode}",
      );
      print("dio exception data in token confirmation - ${e.response?.data}");
      throw ServiceFailure("unable to get token Confirmation! - dio exception");
    } on Exception catch (e) {
      print("exception in token confirmation - $e");
      throw ServiceFailure("unable to get token Confirmation! - exception");
    }
  }
}
