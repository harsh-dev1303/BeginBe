

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/data/models/single_category_model.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/categories_entity.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel{

  factory CategoriesModel({
     @JsonKey(name: "categories") required List<SingleCategoryModel> categories
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String,dynamic> json) => _$CategoriesModelFromJson(json);

  CategoriesModel._();

  CategoriesEntity toDomain(){
    return CategoriesEntity(
      categories: categories.map((e)=>e.toDomain()).toList()
    );
  }

}