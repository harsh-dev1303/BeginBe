// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_centers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ServiceCentersModel _$ServiceCentersModelFromJson(Map<String, dynamic> json) {
  return _ServiceCentersModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceCentersModel {
  @JsonKey(name: "services")
  List<ServiceModel> get services => throw _privateConstructorUsedError;

  /// Serializes this ServiceCentersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceCentersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCentersModelCopyWith<ServiceCentersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCentersModelCopyWith<$Res> {
  factory $ServiceCentersModelCopyWith(
    ServiceCentersModel value,
    $Res Function(ServiceCentersModel) then,
  ) = _$ServiceCentersModelCopyWithImpl<$Res, ServiceCentersModel>;
  @useResult
  $Res call({@JsonKey(name: "services") List<ServiceModel> services});
}

/// @nodoc
class _$ServiceCentersModelCopyWithImpl<$Res, $Val extends ServiceCentersModel>
    implements $ServiceCentersModelCopyWith<$Res> {
  _$ServiceCentersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceCentersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? services = null}) {
    return _then(
      _value.copyWith(
            services: null == services
                ? _value.services
                : services // ignore: cast_nullable_to_non_nullable
                      as List<ServiceModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServiceCentersModelImplCopyWith<$Res>
    implements $ServiceCentersModelCopyWith<$Res> {
  factory _$$ServiceCentersModelImplCopyWith(
    _$ServiceCentersModelImpl value,
    $Res Function(_$ServiceCentersModelImpl) then,
  ) = __$$ServiceCentersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "services") List<ServiceModel> services});
}

/// @nodoc
class __$$ServiceCentersModelImplCopyWithImpl<$Res>
    extends _$ServiceCentersModelCopyWithImpl<$Res, _$ServiceCentersModelImpl>
    implements _$$ServiceCentersModelImplCopyWith<$Res> {
  __$$ServiceCentersModelImplCopyWithImpl(
    _$ServiceCentersModelImpl _value,
    $Res Function(_$ServiceCentersModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceCentersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? services = null}) {
    return _then(
      _$ServiceCentersModelImpl(
        services: null == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<ServiceModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceCentersModelImpl extends _ServiceCentersModel {
  _$ServiceCentersModelImpl({
    @JsonKey(name: "services") required final List<ServiceModel> services,
  }) : _services = services,
       super._();

  factory _$ServiceCentersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceCentersModelImplFromJson(json);

  final List<ServiceModel> _services;
  @override
  @JsonKey(name: "services")
  List<ServiceModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceCentersModel(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCentersModelImpl &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  /// Create a copy of ServiceCentersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCentersModelImplCopyWith<_$ServiceCentersModelImpl> get copyWith =>
      __$$ServiceCentersModelImplCopyWithImpl<_$ServiceCentersModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceCentersModelImplToJson(this);
  }
}

abstract class _ServiceCentersModel extends ServiceCentersModel {
  factory _ServiceCentersModel({
    @JsonKey(name: "services") required final List<ServiceModel> services,
  }) = _$ServiceCentersModelImpl;
  _ServiceCentersModel._() : super._();

  factory _ServiceCentersModel.fromJson(Map<String, dynamic> json) =
      _$ServiceCentersModelImpl.fromJson;

  @override
  @JsonKey(name: "services")
  List<ServiceModel> get services;

  /// Create a copy of ServiceCentersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceCentersModelImplCopyWith<_$ServiceCentersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
