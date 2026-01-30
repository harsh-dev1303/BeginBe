
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stored_token_model.freezed.dart';

@freezed
class StoredTokenModel with _$StoredTokenModel{

  factory StoredTokenModel({
    required String tokenId,
    required String categoryName,
    required String branchName
  }) = _StoredTokenModel;

}