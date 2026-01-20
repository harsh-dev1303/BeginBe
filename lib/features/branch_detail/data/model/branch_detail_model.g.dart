// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchDetailModelImpl _$$BranchDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$BranchDetailModelImpl(
  id: json['id'] as String,
  branchId: json['branchId'] as String,
  branchName: json['branchName'] as String,
  branchAddress: json['branchAddress'] as String,
  timing: json['timing'] as String,
  avgWaitTime: json['avgWaitTime'] as String,
  overview: json['overview'] as String,
  locLatitude: (json['locLatitude'] as num).toDouble(),
  locLongitude: (json['locLongitude'] as num).toDouble(),
);

Map<String, dynamic> _$$BranchDetailModelImplToJson(
  _$BranchDetailModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'branchId': instance.branchId,
  'branchName': instance.branchName,
  'branchAddress': instance.branchAddress,
  'timing': instance.timing,
  'avgWaitTime': instance.avgWaitTime,
  'overview': instance.overview,
  'locLatitude': instance.locLatitude,
  'locLongitude': instance.locLongitude,
};
