// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TokenPreviewModel _$TokenPreviewModelFromJson(Map<String, dynamic> json) {
  return _TokenPreviewModel.fromJson(json);
}

/// @nodoc
mixin _$TokenPreviewModel {
  @JsonKey(name: "categoryId")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryName")
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "branchName")
  String get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: "preview")
  List<SpecificDateToken> get preview => throw _privateConstructorUsedError;

  /// Serializes this TokenPreviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenPreviewModelCopyWith<TokenPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPreviewModelCopyWith<$Res> {
  factory $TokenPreviewModelCopyWith(
    TokenPreviewModel value,
    $Res Function(TokenPreviewModel) then,
  ) = _$TokenPreviewModelCopyWithImpl<$Res, TokenPreviewModel>;
  @useResult
  $Res call({
    @JsonKey(name: "categoryId") String categoryId,
    @JsonKey(name: "categoryName") String categoryName,
    @JsonKey(name: "branchName") String branchName,
    @JsonKey(name: "preview") List<SpecificDateToken> preview,
  });
}

/// @nodoc
class _$TokenPreviewModelCopyWithImpl<$Res, $Val extends TokenPreviewModel>
    implements $TokenPreviewModelCopyWith<$Res> {
  _$TokenPreviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenPreviewModel
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
                      as List<SpecificDateToken>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TokenPreviewModelImplCopyWith<$Res>
    implements $TokenPreviewModelCopyWith<$Res> {
  factory _$$TokenPreviewModelImplCopyWith(
    _$TokenPreviewModelImpl value,
    $Res Function(_$TokenPreviewModelImpl) then,
  ) = __$$TokenPreviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "categoryId") String categoryId,
    @JsonKey(name: "categoryName") String categoryName,
    @JsonKey(name: "branchName") String branchName,
    @JsonKey(name: "preview") List<SpecificDateToken> preview,
  });
}

/// @nodoc
class __$$TokenPreviewModelImplCopyWithImpl<$Res>
    extends _$TokenPreviewModelCopyWithImpl<$Res, _$TokenPreviewModelImpl>
    implements _$$TokenPreviewModelImplCopyWith<$Res> {
  __$$TokenPreviewModelImplCopyWithImpl(
    _$TokenPreviewModelImpl _value,
    $Res Function(_$TokenPreviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TokenPreviewModel
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
      _$TokenPreviewModelImpl(
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
                  as List<SpecificDateToken>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenPreviewModelImpl extends _TokenPreviewModel {
  _$TokenPreviewModelImpl({
    @JsonKey(name: "categoryId") required this.categoryId,
    @JsonKey(name: "categoryName") required this.categoryName,
    @JsonKey(name: "branchName") required this.branchName,
    @JsonKey(name: "preview") required final List<SpecificDateToken> preview,
  }) : _preview = preview,
       super._();

  factory _$TokenPreviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenPreviewModelImplFromJson(json);

  @override
  @JsonKey(name: "categoryId")
  final String categoryId;
  @override
  @JsonKey(name: "categoryName")
  final String categoryName;
  @override
  @JsonKey(name: "branchName")
  final String branchName;
  final List<SpecificDateToken> _preview;
  @override
  @JsonKey(name: "preview")
  List<SpecificDateToken> get preview {
    if (_preview is EqualUnmodifiableListView) return _preview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preview);
  }

  @override
  String toString() {
    return 'TokenPreviewModel(categoryId: $categoryId, categoryName: $categoryName, branchName: $branchName, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenPreviewModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            const DeepCollectionEquality().equals(other._preview, _preview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    categoryId,
    categoryName,
    branchName,
    const DeepCollectionEquality().hash(_preview),
  );

  /// Create a copy of TokenPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenPreviewModelImplCopyWith<_$TokenPreviewModelImpl> get copyWith =>
      __$$TokenPreviewModelImplCopyWithImpl<_$TokenPreviewModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenPreviewModelImplToJson(this);
  }
}

abstract class _TokenPreviewModel extends TokenPreviewModel {
  factory _TokenPreviewModel({
    @JsonKey(name: "categoryId") required final String categoryId,
    @JsonKey(name: "categoryName") required final String categoryName,
    @JsonKey(name: "branchName") required final String branchName,
    @JsonKey(name: "preview") required final List<SpecificDateToken> preview,
  }) = _$TokenPreviewModelImpl;
  _TokenPreviewModel._() : super._();

  factory _TokenPreviewModel.fromJson(Map<String, dynamic> json) =
      _$TokenPreviewModelImpl.fromJson;

  @override
  @JsonKey(name: "categoryId")
  String get categoryId;
  @override
  @JsonKey(name: "categoryName")
  String get categoryName;
  @override
  @JsonKey(name: "branchName")
  String get branchName;
  @override
  @JsonKey(name: "preview")
  List<SpecificDateToken> get preview;

  /// Create a copy of TokenPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenPreviewModelImplCopyWith<_$TokenPreviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
