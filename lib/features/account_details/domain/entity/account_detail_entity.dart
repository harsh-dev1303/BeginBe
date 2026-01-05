
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_detail_entity.freezed.dart';

@freezed
class AccountDetailEntity with _$AccountDetailEntity {

  factory AccountDetailEntity({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String profileUrl
  }) = _AccountEntity ;

}