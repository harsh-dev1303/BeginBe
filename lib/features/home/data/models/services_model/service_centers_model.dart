

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/home/data/models/services_model/service_model.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/services_entity.dart';

part 'service_centers_model.freezed.dart';
part 'service_centers_model.g.dart';

@freezed
class ServiceCentersModel with _$ServiceCentersModel{

  factory ServiceCentersModel({
    @JsonKey(name: "services") required List<ServiceModel> services,

  }) = _ServiceCentersModel;

  factory ServiceCentersModel.fromJson(Map<String,dynamic> json) => _$ServiceCentersModelFromJson(json);

  ServiceCentersModel._();

  ServicesEntity toDomain(){
    return ServicesEntity(
      services: services.map((e)=>e.toDomain()).toList()
    );
  }

}