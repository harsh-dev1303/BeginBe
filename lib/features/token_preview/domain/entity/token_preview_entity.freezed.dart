// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_preview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TokenPreviewEntity {
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;
  List<SpecificDateDetail> get preview => throw _privateConstructorUsedError;

  /// Create a copy of TokenPreviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenPreviewEntityCopyWith<TokenPreviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPreviewEntityCopyWith<$Res> {
  factory $TokenPreviewEntityCopyWith(
    TokenPreviewEntity value,
    $Res Function(TokenPreviewEntity) then,
  ) = _$TokenPreviewEntityCopyWithImpl<$Res, TokenPreviewEntity>;
  @useResult
  $Res call({
    String categoryId,
    String categoryName,
    String branchName,
    List<SpecificDateDetail> preview,
  });
}

/// @nodoc
class _$TokenPreviewEntityCopyWithImpl<$Res, $Val extends TokenPreviewEntity>
    implements $TokenPreviewEntityCopyWith<$Res> {
  _$TokenPreviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenPreviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? branchName = null,
    Object? preview = null,
  }) {
    return _then(
      _value.copyWith(
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryName: null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String,
            branchName: null == branchName
                ? _value.branchName
                : branchName // ignore: cast_nullable_to_non_nullable
                      as String,
            preview: null == preview
                ? _value.preview
                : preview // ignore: cast_nullable_to_non_nullable
                      as List<SpecificDateDetail>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TokenPreviewEntityImplCopyWith<$Res>
    implements $TokenPreviewEntityCopyWith<$Res> {
  factory _$$TokenPreviewEntityImplCopyWith(
    _$TokenPreviewEntityImpl value,
    $Res Function(_$TokenPreviewEntityImpl) then,
  ) = __$$TokenPreviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String categoryId,
    String categoryName,
    String branchName,
    List<SpecificDateDetail> preview,
  });
}

/// @nodoc
class __$$TokenPreviewEntityImplCopyWithImpl<$Res>
    extends _$TokenPreviewEntityCopyWithImpl<$Res, _$TokenPreviewEntityImpl>
    implements _$$TokenPreviewEntityImplCopyWith<$Res> {
  __$$TokenPreviewEntityImplCopyWithImpl(
    _$TokenPreviewEntityImpl _value,
    $Res Function(_$TokenPreviewEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TokenPreviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? branchName = null,
    Object? preview = null,
  }) {
    return _then(
      _$TokenPreviewEntityImpl(
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryName: null == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String,
        branchName: null == branchName
            ? _value.branchName
            : branchName // ignore: cast_nullable_to_non_nullable
                  as String,
        preview: null == preview
            ? _value._preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as List<SpecificDateDetail>,
      ),
    );
  }
}

/// @nodoc

class _$TokenPreviewEntityImpl implements _TokenPreviewEntity {
  _$TokenPreviewEntityImpl({
    required this.categoryId,
    required this.categoryName,
    required this.branchName,
    required final List<SpecificDateDetail> preview,
  }) : _preview = preview;

  @override
  final String categoryId;
  @override
  final String categoryName;
  @override
  final String branchName;
  final List<SpecificDateDetail> _preview;
  @override
  List<SpecificDateDetail> get preview {
    if (_preview is EqualUnmodifiableListView) return _preview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preview);
  }

  @override
  String toString() {
    return 'TokenPreviewEntity(categoryId: $categoryId, categoryName: $categoryName, branchName: $branchName, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenPreviewEntityImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            const DeepCollectionEquality().equals(other._preview, _preview));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    categoryId,
    categoryName,
    branchName,
    const DeepCollectionEquality().hash(_preview),
  );

  /// Create a copy of TokenPreviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenPreviewEntityImplCopyWith<_$TokenPreviewEntityImpl> get copyWith =>
      __$$TokenPreviewEntityImplCopyWithImpl<_$TokenPreviewEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TokenPreviewEntity implements TokenPreviewEntity {
  factory _TokenPreviewEntity({
    required final String categoryId,
    required final String categoryName,
    required final String branchName,
    required final List<SpecificDateDetail> preview,
  }) = _$TokenPreviewEntityImpl;

  @override
  String get categoryId;
  @override
  String get categoryName;
  @override
  String get branchName;
  @override
  List<SpecificDateDetail> get preview;

  /// Create a copy of TokenPreviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenPreviewEntityImplCopyWith<_$TokenPreviewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
