// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleCategoryModelImpl _$$SingleCategoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$SingleCategoryModelImpl(
  categoryId: json['_id'] as String,
  categoryName: json['name'] as String,
  serviceId: json['service'] as String,
  branchId: json['branch'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  version: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$$SingleCategoryModelImplToJson(
  _$SingleCategoryModelImpl instance,
) => <String, dynamic>{
  '_id': instance.categoryId,
  'name': instance.categoryName,
  'service': instance.serviceId,
  'branch': instance.branchId,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  '__v': instance.version,
};
