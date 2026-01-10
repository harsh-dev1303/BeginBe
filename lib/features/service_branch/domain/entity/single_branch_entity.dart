
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_branch_entity.freezed.dart';

@freezed
class SingleBranchEntity with _$SingleBranchEntity{

  factory SingleBranchEntity({
    required String branchId,
    required String branchName,
    required String branchAddress,
    required String branchServiceId,
  }) = _SingleBranchEntity;


}