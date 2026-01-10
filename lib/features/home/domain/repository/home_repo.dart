import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/services_entity.dart';

abstract class HomeRepo {
  ResultEither<ServicesEntity> serviceCenters();
}