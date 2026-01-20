

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/entity/specific_date_detail.dart';

part 'specific_date_token.freezed.dart';
part 'specific_date_token.g.dart';

@freezed
class SpecificDateToken with _$SpecificDateToken{

  factory SpecificDateToken({
    @JsonKey(name: "date") required String date,
    @JsonKey(name: "queueLength") required String queueLength,
    @JsonKey(name: "peopleAhead") required String peopleAhead,
    @JsonKey(name: "estimatedWaitTime") required String estimatedWaitTime
  }) = _SpecificDateToken;

  factory SpecificDateToken.fromJson(Map<String,dynamic> json) => _$SpecificDateTokenFromJson(json);

  SpecificDateToken._();

  SpecificDateDetail toDomain(){
    return SpecificDateDetail(
      date: date, 
      queueLength: queueLength, 
      peopleAhead: peopleAhead, 
      estimatedWaitTime: estimatedWaitTime
    );
    
  }
  
}