import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/data/datasource/branches_datasource.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/entity/service_branches_entity.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/repository/branch_repo.dart';

class BranchRepoImpl implements BranchRepo{

  final BranchesDatasource branchesDatasource;

  BranchRepoImpl(this.branchesDatasource);

  @override
  ResultEither<ServiceBranchesEntity> getBranches(String serviceId) async {
    try{
      final branchesModel = await branchesDatasource.branches(serviceId);
      return Either.right(branchesModel.toDomain());
    }on ServiceFailure catch(e){
      return Either.left(e);
    }
  }

}