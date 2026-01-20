

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/data/model/specific_date_token.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/entity/token_preview_entity.dart';

part 'token_preview_model.freezed.dart';
part 'token_preview_model.g.dart';

@freezed
class TokenPreviewModel with _$TokenPreviewModel{

  factory TokenPreviewModel({
    @JsonKey(name: "categoryId") required String categoryId,
    @JsonKey(name: "categoryName") required String categoryName,
    @JsonKey(name: "branchName") required String branchName,
    @JsonKey(name: "preview") required List<SpecificDateToken> preview
  }) = _TokenPreviewModel;

  factory TokenPreviewModel.fromJson(Map<String,dynamic> json) => _$TokenPreviewModelFromJson(json);

  TokenPreviewModel._();

  TokenPreviewEntity toDomain(){
    return TokenPreviewEntity(
      categoryId: categoryId, 
      categoryName: categoryName, 
      branchName: branchName, 
      preview: preview.map((each)=>each.toDomain()).toList()
    );
    
  }

}