
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_entity.freezed.dart';

@freezed
class  AccountEntity with _$AccountEntity{

   factory AccountEntity({
    @JsonKey(name: "id") required int userId,
    @JsonKey(name: "email") required String linkedEmail,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "avatar") required String profileUrl,

  }) = _AccountEntity ;
}