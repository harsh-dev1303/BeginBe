

import 'package:freezed_annotation/freezed_annotation.dart';

part 'specific_date_detail.freezed.dart';

@freezed
class SpecificDateDetail with _$SpecificDateDetail{

  factory SpecificDateDetail({
    required String date,
    required String queueLength,
    required String peopleAhead,
    required String estimatedWaitTime
  }) = _SpecificDateDetail;

}