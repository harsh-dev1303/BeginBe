// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_centers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceCentersModelImpl _$$ServiceCentersModelImplFromJson(
  Map<String, dynamic> json,
) => _$ServiceCentersModelImpl(
  services: (json['services'] as List<dynamic>)
      .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ServiceCentersModelImplToJson(
  _$ServiceCentersModelImpl instance,
) => <String, dynamic>{'services': instance.services};
