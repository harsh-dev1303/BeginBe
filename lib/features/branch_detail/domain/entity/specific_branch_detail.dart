

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/geolocation.dart';

part 'specific_branch_detail.freezed.dart';

@freezed
class SpecificBranchDetail with _$SpecificBranchDetail{

  factory SpecificBranchDetail({
    required String id,
    required String branchId,
    required String branchName,
    required String branchAddress,
    required String timing,
    required String avgWaitTime,
    required String overview,
    required Geolocation geoLocation

  }) = _SpecificBranchDetail;

}