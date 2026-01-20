import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/data/datasource/branch_detail_datasource.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/data/model/branch_detail_model.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/specific_branch_detail.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/repository/branch_detail_repo.dart';

class BranchDetailRepoImpl implements BranchDetailRepo{
  
  final BranchDetailDatasource branchDetailDatasource;

  BranchDetailRepoImpl(this.branchDetailDatasource);

  @override
  ResultEither<SpecificBranchDetail> fetchSpecificBranch(String branchId) async {
    try{
      final branchDetailModel = await branchDetailDatasource.getBranchDetails(branchId);
      return Either.right(branchDetailModel.toDomain()); 
    }on ServiceFailure catch(e){
      return Either.left(ServiceFailure(e.message.toString()));
    }
  }

}