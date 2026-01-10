// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleBranchModelImpl _$$SingleBranchModelImplFromJson(
  Map<String, dynamic> json,
) => _$SingleBranchModelImpl(
  branchId: json['_id'] as String,
  branchName: json['name'] as String,
  branchAddress: json['address'] as String,
  branchServiceId: json['service'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  version: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$$SingleBranchModelImplToJson(
  _$SingleBranchModelImpl instance,
) => <String, dynamic>{
  '_id': instance.branchId,
  'name': instance.branchName,
  'address': instance.branchAddress,
  'service': instance.branchServiceId,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  '__v': instance.version,
};
