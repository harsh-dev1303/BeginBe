import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_data.freezed.dart';
part 'account_data.g.dart';

@freezed
class AccountData with _$AccountData {
  factory AccountData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "avatar") required String profileUrl,
  }) = _AccountData;

  factory AccountData.fromJson(Map<String,dynamic> json) => _$AccountDataFromJson(json);


}
