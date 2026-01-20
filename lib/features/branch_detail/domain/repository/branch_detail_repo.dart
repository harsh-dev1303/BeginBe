import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/specific_branch_detail.dart';

abstract class BranchDetailRepo{
  ResultEither<SpecificBranchDetail> fetchSpecificBranch(String branchId);
}