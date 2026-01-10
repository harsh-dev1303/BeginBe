

import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_service_entity.freezed.dart';

@freezed
class SingleServiceEntity with _$SingleServiceEntity{

  factory SingleServiceEntity({
    @JsonKey(name: "_id") required String serviceId,
    @JsonKey(name: "name") required String serviceName
  }) = _SingleServiceEntity;

}