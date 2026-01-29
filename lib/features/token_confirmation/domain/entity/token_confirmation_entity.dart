

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_confirmation_entity.freezed.dart';

@freezed
class TokenConfirmationEntity with _$TokenConfirmationEntity{

  factory TokenConfirmationEntity({
    required String tokenNumber,    //treat this as "tokenId" not "tokenNumber"
    required String categoryId,
    required String categoryName,
    required String branchName,
    required String estimatedWaitTime,
    required String peopleAhead,
    required String date

  }) = _TokenConfirmationEntity;

}