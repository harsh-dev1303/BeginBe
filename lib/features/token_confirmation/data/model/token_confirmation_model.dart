

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/entity/token_confirmation_entity.dart';

part 'token_confirmation_model.freezed.dart';
part 'token_confirmation_model.g.dart';

@freezed
class TokenConfirmationModel with _$TokenConfirmationModel{

  factory TokenConfirmationModel({
    required String tokenNumber,        //treat this as "tokenId" not "tokenNumber"
    required String categoryId,
    required String categoryName,
    required String branchName,
    required String estimatedWaitTime,
    required String peopleAhead,
    required String date

  }) = _TokenConfirmationModel;

  factory TokenConfirmationModel.fromJson(Map<String,dynamic> json) => _$TokenConfirmationModelFromJson(json);

  TokenConfirmationModel._();

  TokenConfirmationEntity toDomain(){
    return TokenConfirmationEntity(
      tokenNumber: tokenNumber,         //treat this as "tokenId" not "tokenNumber"
      categoryId: categoryId, 
      categoryName: categoryName, 
      branchName: branchName, 
      estimatedWaitTime: estimatedWaitTime, 
      peopleAhead: peopleAhead,
      date: date
      
    );
  }

}