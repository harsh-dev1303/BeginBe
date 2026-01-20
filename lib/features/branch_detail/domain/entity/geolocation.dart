
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.freezed.dart';

@freezed
class Geolocation with _$Geolocation{

  factory Geolocation({
    required double latitude,
    required double longitude
  }) = _Geolocation;

}