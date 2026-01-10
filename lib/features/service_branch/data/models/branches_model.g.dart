// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchesModelImpl _$$BranchesModelImplFromJson(Map<String, dynamic> json) =>
    _$BranchesModelImpl(
      branches: (json['branches'] as List<dynamic>)
          .map((e) => SingleBranchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BranchesModelImplToJson(_$BranchesModelImpl instance) =>
    <String, dynamic>{'branches': instance.branches};
