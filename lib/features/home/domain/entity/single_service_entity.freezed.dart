// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SingleServiceEntity {
  @JsonKey(name: "_id")
  String get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get serviceName => throw _privateConstructorUsedError;

  /// Create a copy of SingleServiceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleServiceEntityCopyWith<SingleServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleServiceEntityCopyWith<$Res> {
  factory $SingleServiceEntityCopyWith(
    SingleServiceEntity value,
    $Res Function(SingleServiceEntity) then,
  ) = _$SingleServiceEntityCopyWithImpl<$Res, SingleServiceEntity>;
  @useResult
  $Res call({
    @JsonKey(name: "_id") String serviceId,
    @JsonKey(name: "name") String serviceName,
  });
}

/// @nodoc
class _$SingleServiceEntityCopyWithImpl<$Res, $Val extends SingleServiceEntity>
    implements $SingleServiceEntityCopyWith<$Res> {
  _$SingleServiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleServiceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? serviceId = null, Object? serviceName = null}) {
    return _then(
      _value.copyWith(
            serviceId: null == serviceId
                ? _value.serviceId
                : serviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            serviceName: null == serviceName
                ? _value.serviceName
                : serviceName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SingleServiceEntityImplCopyWith<$Res>
    implements $SingleServiceEntityCopyWith<$Res> {
  factory _$$SingleServiceEntityImplCopyWith(
    _$SingleServiceEntityImpl value,
    $Res Function(_$SingleServiceEntityImpl) then,
  ) = __$$SingleServiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "_id") String serviceId,
    @JsonKey(name: "name") String serviceName,
  });
}

/// @nodoc
class __$$SingleServiceEntityImplCopyWithImpl<$Res>
    extends _$SingleServiceEntityCopyWithImpl<$Res, _$SingleServiceEntityImpl>
    implements _$$SingleServiceEntityImplCopyWith<$Res> {
  __$$SingleServiceEntityImplCopyWithImpl(
    _$SingleServiceEntityImpl _value,
    $Res Function(_$SingleServiceEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SingleServiceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? serviceId = null, Object? serviceName = null}) {
    return _then(
      _$SingleServiceEntityImpl(
        serviceId: null == serviceId
            ? _value.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        serviceName: null == serviceName
            ? _value.serviceName
            : serviceName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SingleServiceEntityImpl implements _SingleServiceEntity {
  _$SingleServiceEntityImpl({
    @JsonKey(name: "_id") required this.serviceId,
    @JsonKey(name: "name") required this.serviceName,
  });

  @override
  @JsonKey(name: "_id")
  final String serviceId;
  @override
  @JsonKey(name: "name")
  final String serviceName;

  @override
  String toString() {
    return 'SingleServiceEntity(serviceId: $serviceId, serviceName: $serviceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleServiceEntityImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceId, serviceName);

  /// Create a copy of SingleServiceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleServiceEntityImplCopyWith<_$SingleServiceEntityImpl> get copyWith =>
      __$$SingleServiceEntityImplCopyWithImpl<_$SingleServiceEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _SingleServiceEntity implements SingleServiceEntity {
  factory _SingleServiceEntity({
    @JsonKey(name: "_id") required final String serviceId,
    @JsonKey(name: "name") required final String serviceName,
  }) = _$SingleServiceEntityImpl;

  @override
  @JsonKey(name: "_id")
  String get serviceId;
  @override
  @JsonKey(name: "name")
  String get serviceName;

  /// Create a copy of SingleServiceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleServiceEntityImplCopyWith<_$SingleServiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
