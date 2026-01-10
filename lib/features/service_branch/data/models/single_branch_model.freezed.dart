// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SingleBranchModel _$SingleBranchModelFromJson(Map<String, dynamic> json) {
  return _SingleBranchModel.fromJson(json);
}

/// @nodoc
mixin _$SingleBranchModel {
  @JsonKey(name: "_id")
  String get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get branchAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "service")
  String get branchServiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get version => throw _privateConstructorUsedError;

  /// Serializes this SingleBranchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingleBranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleBranchModelCopyWith<SingleBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleBranchModelCopyWith<$Res> {
  factory $SingleBranchModelCopyWith(
    SingleBranchModel value,
    $Res Function(SingleBranchModel) then,
  ) = _$SingleBranchModelCopyWithImpl<$Res, SingleBranchModel>;
  @useResult
  $Res call({
    @JsonKey(name: "_id") String branchId,
    @JsonKey(name: "name") String branchName,
    @JsonKey(name: "address") String branchAddress,
    @JsonKey(name: "service") String branchServiceId,
    @JsonKey(name: "createdAt") String createdAt,
    @JsonKey(name: "updatedAt") String updatedAt,
    @JsonKey(name: "__v") int version,
  });
}

/// @nodoc
class _$SingleBranchModelCopyWithImpl<$Res, $Val extends SingleBranchModel>
    implements $SingleBranchModelCopyWith<$Res> {
  _$SingleBranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleBranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
    Object? branchName = null,
    Object? branchAddress = null,
    Object? branchServiceId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(
      _value.copyWith(
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String,
            branchName: null == branchName
                ? _value.branchName
                : branchName // ignore: cast_nullable_to_non_nullable
                      as String,
            branchAddress: null == branchAddress
                ? _value.branchAddress
                : branchAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            branchServiceId: null == branchServiceId
                ? _value.branchServiceId
                : branchServiceId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SingleBranchModelImplCopyWith<$Res>
    implements $SingleBranchModelCopyWith<$Res> {
  factory _$$SingleBranchModelImplCopyWith(
    _$SingleBranchModelImpl value,
    $Res Function(_$SingleBranchModelImpl) then,
  ) = __$$SingleBranchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "_id") String branchId,
    @JsonKey(name: "name") String branchName,
    @JsonKey(name: "address") String branchAddress,
    @JsonKey(name: "service") String branchServiceId,
    @JsonKey(name: "createdAt") String createdAt,
    @JsonKey(name: "updatedAt") String updatedAt,
    @JsonKey(name: "__v") int version,
  });
}

/// @nodoc
class __$$SingleBranchModelImplCopyWithImpl<$Res>
    extends _$SingleBranchModelCopyWithImpl<$Res, _$SingleBranchModelImpl>
    implements _$$SingleBranchModelImplCopyWith<$Res> {
  __$$SingleBranchModelImplCopyWithImpl(
    _$SingleBranchModelImpl _value,
    $Res Function(_$SingleBranchModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SingleBranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
    Object? branchName = null,
    Object? branchAddress = null,
    Object? branchServiceId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(
      _$SingleBranchModelImpl(
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String,
        branchName: null == branchName
            ? _value.branchName
            : branchName // ignore: cast_nullable_to_non_nullable
                  as String,
        branchAddress: null == branchAddress
            ? _value.branchAddress
            : branchAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        branchServiceId: null == branchServiceId
            ? _value.branchServiceId
            : branchServiceId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleBranchModelImpl extends _SingleBranchModel {
  _$SingleBranchModelImpl({
    @JsonKey(name: "_id") required this.branchId,
    @JsonKey(name: "name") required this.branchName,
    @JsonKey(name: "address") required this.branchAddress,
    @JsonKey(name: "service") required this.branchServiceId,
    @JsonKey(name: "createdAt") required this.createdAt,
    @JsonKey(name: "updatedAt") required this.updatedAt,
    @JsonKey(name: "__v") required this.version,
  }) : super._();

  factory _$SingleBranchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleBranchModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String branchId;
  @override
  @JsonKey(name: "name")
  final String branchName;
  @override
  @JsonKey(name: "address")
  final String branchAddress;
  @override
  @JsonKey(name: "service")
  final String branchServiceId;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String updatedAt;
  @override
  @JsonKey(name: "__v")
  final int version;

  @override
  String toString() {
    return 'SingleBranchModel(branchId: $branchId, branchName: $branchName, branchAddress: $branchAddress, branchServiceId: $branchServiceId, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleBranchModelImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.branchAddress, branchAddress) ||
                other.branchAddress == branchAddress) &&
            (identical(other.branchServiceId, branchServiceId) ||
                other.branchServiceId == branchServiceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    branchId,
    branchName,
    branchAddress,
    branchServiceId,
    createdAt,
    updatedAt,
    version,
  );

  /// Create a copy of SingleBranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleBranchModelImplCopyWith<_$SingleBranchModelImpl> get copyWith =>
      __$$SingleBranchModelImplCopyWithImpl<_$SingleBranchModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleBranchModelImplToJson(this);
  }
}

abstract class _SingleBranchModel extends SingleBranchModel {
  factory _SingleBranchModel({
    @JsonKey(name: "_id") required final String branchId,
    @JsonKey(name: "name") required final String branchName,
    @JsonKey(name: "address") required final String branchAddress,
    @JsonKey(name: "service") required final String branchServiceId,
    @JsonKey(name: "createdAt") required final String createdAt,
    @JsonKey(name: "updatedAt") required final String updatedAt,
    @JsonKey(name: "__v") required final int version,
  }) = _$SingleBranchModelImpl;
  _SingleBranchModel._() : super._();

  factory _SingleBranchModel.fromJson(Map<String, dynamic> json) =
      _$SingleBranchModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get branchId;
  @override
  @JsonKey(name: "name")
  String get branchName;
  @override
  @JsonKey(name: "address")
  String get branchAddress;
  @override
  @JsonKey(name: "service")
  String get branchServiceId;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get version;

  /// Create a copy of SingleBranchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleBranchModelImplCopyWith<_$SingleBranchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
