
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/single_service_entity.dart';

part 'services_entity.freezed.dart';

@freezed
class ServicesEntity with _$ServicesEntity{

  factory ServicesEntity({
    required List<SingleServiceEntity> services
  }) = _ServicesEntity;

}
