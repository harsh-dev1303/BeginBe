// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stored_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StoredTokenModel {
  String get tokenId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;

  /// Create a copy of StoredTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoredTokenModelCopyWith<StoredTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoredTokenModelCopyWith<$Res> {
  factory $StoredTokenModelCopyWith(
    StoredTokenModel value,
    $Res Function(StoredTokenModel) then,
  ) = _$StoredTokenModelCopyWithImpl<$Res, StoredTokenModel>;
  @useResult
  $Res call({String tokenId, String categoryName, String branchName});
}

/// @nodoc
class _$StoredTokenModelCopyWithImpl<$Res, $Val extends StoredTokenModel>
    implements $StoredTokenModelCopyWith<$Res> {
  _$StoredTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoredTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? categoryName = null,
    Object? branchName = null,
  }) {
    return _then(
      _value.copyWith(
            tokenId: null == tokenId
                ? _value.tokenId
                : tokenId // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryName: null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String,
            branchName: null == branchName
                ? _value.branchName
                : branchName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoredTokenModelImplCopyWith<$Res>
    implements $StoredTokenModelCopyWith<$Res> {
  factory _$$StoredTokenModelImplCopyWith(
    _$StoredTokenModelImpl value,
    $Res Function(_$StoredTokenModelImpl) then,
  ) = __$$StoredTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tokenId, String categoryName, String branchName});
}

/// @nodoc
class __$$StoredTokenModelImplCopyWithImpl<$Res>
    extends _$StoredTokenModelCopyWithImpl<$Res, _$StoredTokenModelImpl>
    implements _$$StoredTokenModelImplCopyWith<$Res> {
  __$$StoredTokenModelImplCopyWithImpl(
    _$StoredTokenModelImpl _value,
    $Res Function(_$StoredTokenModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoredTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? categoryName = null,
    Object? branchName = null,
  }) {
    return _then(
      _$StoredTokenModelImpl(
        tokenId: null == tokenId
            ? _value.tokenId
            : tokenId // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryName: null == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String,
        branchName: null == branchName
            ? _value.branchName
            : branchName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StoredTokenModelImpl implements _StoredTokenModel {
  _$StoredTokenModelImpl({
    required this.tokenId,
    required this.categoryName,
    required this.branchName,
  });

  @override
  final String tokenId;
  @override
  final String categoryName;
  @override
  final String branchName;

  @override
  String toString() {
    return 'StoredTokenModel(tokenId: $tokenId, categoryName: $categoryName, branchName: $branchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoredTokenModelImpl &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenId, categoryName, branchName);

  /// Create a copy of StoredTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoredTokenModelImplCopyWith<_$StoredTokenModelImpl> get copyWith =>
      __$$StoredTokenModelImplCopyWithImpl<_$StoredTokenModelImpl>(
        this,
        _$identity,
      );
}

abstract class _StoredTokenModel implements StoredTokenModel {
  factory _StoredTokenModel({
    required final String tokenId,
    required final String categoryName,
    required final String branchName,
  }) = _$StoredTokenModelImpl;

  @override
  String get tokenId;
  @override
  String get categoryName;
  @override
  String get branchName;

  /// Create a copy of StoredTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoredTokenModelImplCopyWith<_$StoredTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
