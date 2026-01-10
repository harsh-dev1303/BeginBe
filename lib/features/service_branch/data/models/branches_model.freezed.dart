// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branches_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BranchesModel _$BranchesModelFromJson(Map<String, dynamic> json) {
  return _BranchesModel.fromJson(json);
}

/// @nodoc
mixin _$BranchesModel {
  @JsonKey(name: "branches")
  List<SingleBranchModel> get branches => throw _privateConstructorUsedError;

  /// Serializes this BranchesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchesModelCopyWith<BranchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesModelCopyWith<$Res> {
  factory $BranchesModelCopyWith(
    BranchesModel value,
    $Res Function(BranchesModel) then,
  ) = _$BranchesModelCopyWithImpl<$Res, BranchesModel>;
  @useResult
  $Res call({@JsonKey(name: "branches") List<SingleBranchModel> branches});
}

/// @nodoc
class _$BranchesModelCopyWithImpl<$Res, $Val extends BranchesModel>
    implements $BranchesModelCopyWith<$Res> {
  _$BranchesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? branches = null}) {
    return _then(
      _value.copyWith(
            branches: null == branches
                ? _value.branches
                : branches // ignore: cast_nullable_to_non_nullable
                      as List<SingleBranchModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BranchesModelImplCopyWith<$Res>
    implements $BranchesModelCopyWith<$Res> {
  factory _$$BranchesModelImplCopyWith(
    _$BranchesModelImpl value,
    $Res Function(_$BranchesModelImpl) then,
  ) = __$$BranchesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "branches") List<SingleBranchModel> branches});
}

/// @nodoc
class __$$BranchesModelImplCopyWithImpl<$Res>
    extends _$BranchesModelCopyWithImpl<$Res, _$BranchesModelImpl>
    implements _$$BranchesModelImplCopyWith<$Res> {
  __$$BranchesModelImplCopyWithImpl(
    _$BranchesModelImpl _value,
    $Res Function(_$BranchesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? branches = null}) {
    return _then(
      _$BranchesModelImpl(
        branches: null == branches
            ? _value._branches
            : branches // ignore: cast_nullable_to_non_nullable
                  as List<SingleBranchModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchesModelImpl extends _BranchesModel {
  _$BranchesModelImpl({
    @JsonKey(name: "branches") required final List<SingleBranchModel> branches,
  }) : _branches = branches,
       super._();

  factory _$BranchesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchesModelImplFromJson(json);

  final List<SingleBranchModel> _branches;
  @override
  @JsonKey(name: "branches")
  List<SingleBranchModel> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  String toString() {
    return 'BranchesModel(branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchesModelImpl &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branches));

  /// Create a copy of BranchesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchesModelImplCopyWith<_$BranchesModelImpl> get copyWith =>
      __$$BranchesModelImplCopyWithImpl<_$BranchesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchesModelImplToJson(this);
  }
}

abstract class _BranchesModel extends BranchesModel {
  factory _BranchesModel({
    @JsonKey(name: "branches") required final List<SingleBranchModel> branches,
  }) = _$BranchesModelImpl;
  _BranchesModel._() : super._();

  factory _BranchesModel.fromJson(Map<String, dynamic> json) =
      _$BranchesModelImpl.fromJson;

  @override
  @JsonKey(name: "branches")
  List<SingleBranchModel> get branches;

  /// Create a copy of BranchesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchesModelImplCopyWith<_$BranchesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
