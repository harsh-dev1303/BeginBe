// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenPreviewModelImpl _$$TokenPreviewModelImplFromJson(
  Map<String, dynamic> json,
) => _$TokenPreviewModelImpl(
  categoryId: json['categoryId'] as String,
  categoryName: json['categoryName'] as String,
  branchName: json['branchName'] as String,
  preview: (json['preview'] as List<dynamic>)
      .map((e) => SpecificDateToken.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$TokenPreviewModelImplToJson(
  _$TokenPreviewModelImpl instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'categoryName': instance.categoryName,
  'branchName': instance.branchName,
  'preview': instance.preview,
};
