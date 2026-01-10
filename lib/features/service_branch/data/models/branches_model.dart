

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/data/models/single_branch_model.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/entity/service_branches_entity.dart';

part 'branches_model.freezed.dart';
part 'branches_model.g.dart';

@freezed
class BranchesModel with _$BranchesModel{

  factory BranchesModel({
    @JsonKey(name: "branches") required List<SingleBranchModel> branches
  }) = _BranchesModel;

  factory BranchesModel.fromJson(Map<String,dynamic> json) => _$BranchesModelFromJson(json);

  BranchesModel._();

  ServiceBranchesEntity toDomain(){
    return ServiceBranchesEntity(
      branchList: branches.map((e)=>e.toDomain()).toList()
      );
  }


}