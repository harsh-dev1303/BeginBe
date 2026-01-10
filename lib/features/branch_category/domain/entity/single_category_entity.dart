

import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_category_entity.freezed.dart';

@freezed
class SingleCategoryEntity with _$SingleCategoryEntity{

  factory SingleCategoryEntity({
    required String categoryId,
    required String categoryName,
    required String serviceId,
    required String branchId
  }) = _SingleCategoryEntity;

}