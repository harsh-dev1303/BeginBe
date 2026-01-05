
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_support.freezed.dart';
part 'account_support.g.dart';

@freezed
class AccountSupport with _$AccountSupport{

  factory AccountSupport({
    required String url ,
    required String text
  }) = _AccountSupport ;

  factory AccountSupport.fromJson(Map<String,dynamic> json) => _$AccountSupportFromJson(json);

}