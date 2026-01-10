

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/entity/single_branch_entity.dart';

part 'service_branches_entity.freezed.dart';

@freezed
class ServiceBranchesEntity with _$ServiceBranchesEntity{

  factory ServiceBranchesEntity({
    required List<SingleBranchEntity> branchList
  }) = _ServiceBranchesEntity;

}