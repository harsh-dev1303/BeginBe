// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_branch_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SingleBranchEntity {
  String get branchId => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;
  String get branchAddress => throw _privateConstructorUsedError;
  String get branchServiceId => throw _privateConstructorUsedError;

  /// Create a copy of SingleBranchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleBranchEntityCopyWith<SingleBranchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleBranchEntityCopyWith<$Res> {
  factory $SingleBranchEntityCopyWith(
    SingleBranchEntity value,
    $Res Function(SingleBranchEntity) then,
  ) = _$SingleBranchEntityCopyWithImpl<$Res, SingleBranchEntity>;
  @useResult
  $Res call({
    String branchId,
    String branchName,
    String branchAddress,
    String branchServiceId,
  });
}

/// @nodoc
class _$SingleBranchEntityCopyWithImpl<$Res, $Val extends SingleBranchEntity>
    implements $SingleBranchEntityCopyWith<$Res> {
  _$SingleBranchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleBranchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
    Object? branchName = null,
    Object? branchAddress = null,
    Object? branchServiceId = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SingleBranchEntityImplCopyWith<$Res>
    implements $SingleBranchEntityCopyWith<$Res> {
  factory _$$SingleBranchEntityImplCopyWith(
    _$SingleBranchEntityImpl value,
    $Res Function(_$SingleBranchEntityImpl) then,
  ) = __$$SingleBranchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String branchId,
    String branchName,
    String branchAddress,
    String branchServiceId,
  });
}

/// @nodoc
class __$$SingleBranchEntityImplCopyWithImpl<$Res>
    extends _$SingleBranchEntityCopyWithImpl<$Res, _$SingleBranchEntityImpl>
    implements _$$SingleBranchEntityImplCopyWith<$Res> {
  __$$SingleBranchEntityImplCopyWithImpl(
    _$SingleBranchEntityImpl _value,
    $Res Function(_$SingleBranchEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SingleBranchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
    Object? branchName = null,
    Object? branchAddress = null,
    Object? branchServiceId = null,
  }) {
    return _then(
      _$SingleBranchEntityImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$SingleBranchEntityImpl implements _SingleBranchEntity {
  _$SingleBranchEntityImpl({
    required this.branchId,
    required this.branchName,
    required this.branchAddress,
    required this.branchServiceId,
  });

  @override
  final String branchId;
  @override
  final String branchName;
  @override
  final String branchAddress;
  @override
  final String branchServiceId;

  @override
  String toString() {
    return 'SingleBranchEntity(branchId: $branchId, branchName: $branchName, branchAddress: $branchAddress, branchServiceId: $branchServiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleBranchEntityImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.branchAddress, branchAddress) ||
                other.branchAddress == branchAddress) &&
            (identical(other.branchServiceId, branchServiceId) ||
                other.branchServiceId == branchServiceId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    branchId,
    branchName,
    branchAddress,
    branchServiceId,
  );

  /// Create a copy of SingleBranchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleBranchEntityImplCopyWith<_$SingleBranchEntityImpl> get copyWith =>
      __$$SingleBranchEntityImplCopyWithImpl<_$SingleBranchEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _SingleBranchEntity implements SingleBranchEntity {
  factory _SingleBranchEntity({
    required final String branchId,
    required final String branchName,
    required final String branchAddress,
    required final String branchServiceId,
  }) = _$SingleBranchEntityImpl;

  @override
  String get branchId;
  @override
  String get branchName;
  @override
  String get branchAddress;
  @override
  String get branchServiceId;

  /// Create a copy of SingleBranchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleBranchEntityImplCopyWith<_$SingleBranchEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
