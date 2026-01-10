
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/single_service_entity.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';


@freezed
class ServiceModel with _$ServiceModel{

  factory ServiceModel({
    @JsonKey(name: "_id") required String serviceId,
    @JsonKey(name: "name") required String serviceName,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "updatedAt") required String updatedAt,
    @JsonKey(name: "__v") required int version,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String,dynamic> json) => _$ServiceModelFromJson(json);

  ServiceModel._();

  SingleServiceEntity toDomain(){
    return SingleServiceEntity(
      serviceId: serviceId, 
      serviceName: serviceName
    );
  }
 

}