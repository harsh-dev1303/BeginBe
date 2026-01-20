

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/entity/specific_date_detail.dart';

part 'token_preview_entity.freezed.dart';

@freezed
class TokenPreviewEntity with _$TokenPreviewEntity{

  factory TokenPreviewEntity({
    required String categoryId,
    required String categoryName,
    required String branchName,
    required List<SpecificDateDetail> preview

  }) = _TokenPreviewEntity;

}