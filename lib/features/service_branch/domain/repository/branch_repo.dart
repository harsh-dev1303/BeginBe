import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/entity/service_branches_entity.dart';

abstract class BranchRepo {

  ResultEither<ServiceBranchesEntity> getBranches(String serviceId);

}