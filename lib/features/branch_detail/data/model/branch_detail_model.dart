

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/geolocation.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/specific_branch_detail.dart';

part 'branch_detail_model.freezed.dart';
part 'branch_detail_model.g.dart';

@freezed
class BranchDetailModel with _$BranchDetailModel{

  factory BranchDetailModel({
    required String id,
    required String branchId,
    required String branchName,
    required String branchAddress,
    required String timing,
    required String avgWaitTime,
    required String overview,
    required double locLatitude,
    required double locLongitude
  }) = _BranchDetailModel;


  //Think of it as: static BranchDetailModel fromJson(...) { ... }
  //But freezed forces it to be a factory.
  factory BranchDetailModel.fromJson(Map<String,dynamic> json) => _$BranchDetailModelFromJson(json);

  BranchDetailModel._();

  SpecificBranchDetail toDomain(){
    return SpecificBranchDetail(
      id: id, 
      branchId: branchId, 
      branchName: branchName, 
      branchAddress: branchAddress, 
      timing: timing, 
      avgWaitTime: avgWaitTime, 
      overview: overview, 
      geoLocation: Geolocation(
        latitude: locLatitude, 
        longitude: locLongitude
        )
      
    );
  }





}