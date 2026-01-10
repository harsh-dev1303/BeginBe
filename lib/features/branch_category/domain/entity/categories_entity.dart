

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/single_category_entity.dart';

part 'categories_entity.freezed.dart';

@freezed
class CategoriesEntity with _$CategoriesEntity{

  factory CategoriesEntity({
    required List<SingleCategoryEntity> categories
  }) = _CategoriesEntity;

}