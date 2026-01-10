// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesModelImpl _$$CategoriesModelImplFromJson(
  Map<String, dynamic> json,
) => _$CategoriesModelImpl(
  categories: (json['categories'] as List<dynamic>)
      .map((e) => SingleCategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CategoriesModelImplToJson(
  _$CategoriesModelImpl instance,
) => <String, dynamic>{'categories': instance.categories};
