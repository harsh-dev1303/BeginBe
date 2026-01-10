


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/single_category_entity.dart';

part 'single_category_model.freezed.dart';
part 'single_category_model.g.dart';

@freezed
class SingleCategoryModel with _$SingleCategoryModel{

  factory SingleCategoryModel({
    @JsonKey(name: "_id") required String categoryId,
    @JsonKey(name: "name") required String categoryName,
    @JsonKey(name: "service") required String serviceId,
    @JsonKey(name: "branch") required String branchId,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "updatedAt") required String updatedAt,
    @JsonKey(name: "__v") required int version
  }) = _SingleCategoryModel;

  factory SingleCategoryModel.fromJson(Map<String,dynamic> json) => _$SingleCategoryModelFromJson(json);
  
  SingleCategoryModel._();

  SingleCategoryEntity toDomain(){
    return SingleCategoryEntity(
      categoryId: categoryId, 
      categoryName: categoryName, 
      serviceId: serviceId, 
      branchId: branchId
    );
  }

  

}