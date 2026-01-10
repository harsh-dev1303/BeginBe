import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/entity/single_branch_entity.dart';

part 'single_branch_model.freezed.dart';
part 'single_branch_model.g.dart';

@freezed
class SingleBranchModel with _$SingleBranchModel{

  factory SingleBranchModel({
    @JsonKey(name: "_id") required String branchId,
    @JsonKey(name: "name") required String branchName,
    @JsonKey(name: "address") required String branchAddress,
    @JsonKey(name: "service") required String branchServiceId,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "updatedAt") required String updatedAt,
    @JsonKey(name: "__v") required int version,
  }) = _SingleBranchModel;

  
  factory SingleBranchModel.fromJson(Map<String,dynamic> json) => _$SingleBranchModelFromJson(json);

  SingleBranchModel._();

  SingleBranchEntity toDomain(){
    return SingleBranchEntity(
      branchId: branchId, 
      branchName: branchName,
      branchAddress: branchAddress, 
      branchServiceId: branchServiceId,
      );
  }

}