// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_branches_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ServiceBranchesEntity {
  List<SingleBranchEntity> get branchList => throw _privateConstructorUsedError;

  /// Create a copy of ServiceBranchesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceBranchesEntityCopyWith<ServiceBranchesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceBranchesEntityCopyWith<$Res> {
  factory $ServiceBranchesEntityCopyWith(
    ServiceBranchesEntity value,
    $Res Function(ServiceBranchesEntity) then,
  ) = _$ServiceBranchesEntityCopyWithImpl<$Res, ServiceBranchesEntity>;
  @useResult
  $Res call({List<SingleBranchEntity> branchList});
}

/// @nodoc
class _$ServiceBranchesEntityCopyWithImpl<
  $Res,
  $Val extends ServiceBranchesEntity
>
    implements $ServiceBranchesEntityCopyWith<$Res> {
  _$ServiceBranchesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceBranchesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? branchList = null}) {
    return _then(
      _value.copyWith(
            branchList: null == branchList
                ? _value.branchList
                : branchList // ignore: cast_nullable_to_non_nullable
                      as List<SingleBranchEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServiceBranchesEntityImplCopyWith<$Res>
    implements $ServiceBranchesEntityCopyWith<$Res> {
  factory _$$ServiceBranchesEntityImplCopyWith(
    _$ServiceBranchesEntityImpl value,
    $Res Function(_$ServiceBranchesEntityImpl) then,
  ) = __$$ServiceBranchesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SingleBranchEntity> branchList});
}

/// @nodoc
class __$$ServiceBranchesEntityImplCopyWithImpl<$Res>
    extends
        _$ServiceBranchesEntityCopyWithImpl<$Res, _$ServiceBranchesEntityImpl>
    implements _$$ServiceBranchesEntityImplCopyWith<$Res> {
  __$$ServiceBranchesEntityImplCopyWithImpl(
    _$ServiceBranchesEntityImpl _value,
    $Res Function(_$ServiceBranchesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceBranchesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? branchList = null}) {
    return _then(
      _$ServiceBranchesEntityImpl(
        branchList: null == branchList
            ? _value._branchList
            : branchList // ignore: cast_nullable_to_non_nullable
                  as List<SingleBranchEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ServiceBranchesEntityImpl implements _ServiceBranchesEntity {
  _$ServiceBranchesEntityImpl({
    required final List<SingleBranchEntity> branchList,
  }) : _branchList = branchList;

  final List<SingleBranchEntity> _branchList;
  @override
  List<SingleBranchEntity> get branchList {
    if (_branchList is EqualUnmodifiableListView) return _branchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branchList);
  }

  @override
  String toString() {
    return 'ServiceBranchesEntity(branchList: $branchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceBranchesEntityImpl &&
            const DeepCollectionEquality().equals(
              other._branchList,
              _branchList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_branchList),
  );

  /// Create a copy of ServiceBranchesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceBranchesEntityImplCopyWith<_$ServiceBranchesEntityImpl>
  get copyWith =>
      __$$ServiceBranchesEntityImplCopyWithImpl<_$ServiceBranchesEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ServiceBranchesEntity implements ServiceBranchesEntity {
  factory _ServiceBranchesEntity({
    required final List<SingleBranchEntity> branchList,
  }) = _$ServiceBranchesEntityImpl;

  @override
  List<SingleBranchEntity> get branchList;

  /// Create a copy of ServiceBranchesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceBranchesEntityImplCopyWith<_$ServiceBranchesEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
