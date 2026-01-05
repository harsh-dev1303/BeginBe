
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_support_model.freezed.dart';
part 'account_support_model.g.dart';

@freezed
class AccountSupportModel with _$AccountSupportModel {
  factory AccountSupportModel({
    required String url,
    required String text
  }) = _AccountSupportModel;

  factory AccountSupportModel.fromJson(Map<String,dynamic> json) => _$AccountSupportModelFromJson(json);

}