// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SingleCategoryModel _$SingleCategoryModelFromJson(Map<String, dynamic> json) {
  return _SingleCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SingleCategoryModel {
  @JsonKey(name: "_id")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "service")
  String get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch")
  String get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get version => throw _privateConstructorUsedError;

  /// Serializes this SingleCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleCategoryModelCopyWith<SingleCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCategoryModelCopyWith<$Res> {
  factory $SingleCategoryModelCopyWith(
    SingleCategoryModel value,
    $Res Function(SingleCategoryModel) then,
  ) = _$SingleCategoryModelCopyWithImpl<$Res, SingleCategoryModel>;
  @useResult
  $Res call({
    @JsonKey(name: "_id") String categoryId,
    @JsonKey(name: "name") String categoryName,
    @JsonKey(name: "service") String serviceId,
    @JsonKey(name: "branch") String branchId,
    @JsonKey(name: "createdAt") String createdAt,
    @JsonKey(name: "updatedAt") String updatedAt,
    @JsonKey(name: "__v") int version,
  });
}

/// @nodoc
class _$SingleCategoryModelCopyWithImpl<$Res, $Val extends SingleCategoryModel>
    implements $SingleCategoryModelCopyWith<$Res> {
  _$SingleCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? serviceId = null,
    Object? branchId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
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
            serviceId: null == serviceId
                ? _value.serviceId
                : serviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SingleCategoryModelImplCopyWith<$Res>
    implements $SingleCategoryModelCopyWith<$Res> {
  factory _$$SingleCategoryModelImplCopyWith(
    _$SingleCategoryModelImpl value,
    $Res Function(_$SingleCategoryModelImpl) then,
  ) = __$$SingleCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "_id") String categoryId,
    @JsonKey(name: "name") String categoryName,
    @JsonKey(name: "service") String serviceId,
    @JsonKey(name: "branch") String branchId,
    @JsonKey(name: "createdAt") String createdAt,
    @JsonKey(name: "updatedAt") String updatedAt,
    @JsonKey(name: "__v") int version,
  });
}

/// @nodoc
class __$$SingleCategoryModelImplCopyWithImpl<$Res>
    extends _$SingleCategoryModelCopyWithImpl<$Res, _$SingleCategoryModelImpl>
    implements _$$SingleCategoryModelImplCopyWith<$Res> {
  __$$SingleCategoryModelImplCopyWithImpl(
    _$SingleCategoryModelImpl _value,
    $Res Function(_$SingleCategoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? serviceId = null,
    Object? branchId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(
      _$SingleCategoryModelImpl(
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryName: null == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String,
        serviceId: null == serviceId
            ? _value.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
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
class _$SingleCategoryModelImpl extends _SingleCategoryModel {
  _$SingleCategoryModelImpl({
    @JsonKey(name: "_id") required this.categoryId,
    @JsonKey(name: "name") required this.categoryName,
    @JsonKey(name: "service") required this.serviceId,
    @JsonKey(name: "branch") required this.branchId,
    @JsonKey(name: "createdAt") required this.createdAt,
    @JsonKey(name: "updatedAt") required this.updatedAt,
    @JsonKey(name: "__v") required this.version,
  }) : super._();

  factory _$SingleCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String categoryId;
  @override
  @JsonKey(name: "name")
  final String categoryName;
  @override
  @JsonKey(name: "service")
  final String serviceId;
  @override
  @JsonKey(name: "branch")
  final String branchId;
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
    return 'SingleCategoryModel(categoryId: $categoryId, categoryName: $categoryName, serviceId: $serviceId, branchId: $branchId, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCategoryModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
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
    categoryId,
    categoryName,
    serviceId,
    branchId,
    createdAt,
    updatedAt,
    version,
  );

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCategoryModelImplCopyWith<_$SingleCategoryModelImpl> get copyWith =>
      __$$SingleCategoryModelImplCopyWithImpl<_$SingleCategoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleCategoryModelImplToJson(this);
  }
}

abstract class _SingleCategoryModel extends SingleCategoryModel {
  factory _SingleCategoryModel({
    @JsonKey(name: "_id") required final String categoryId,
    @JsonKey(name: "name") required final String categoryName,
    @JsonKey(name: "service") required final String serviceId,
    @JsonKey(name: "branch") required final String branchId,
    @JsonKey(name: "createdAt") required final String createdAt,
    @JsonKey(name: "updatedAt") required final String updatedAt,
    @JsonKey(name: "__v") required final int version,
  }) = _$SingleCategoryModelImpl;
  _SingleCategoryModel._() : super._();

  factory _SingleCategoryModel.fromJson(Map<String, dynamic> json) =
      _$SingleCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get categoryId;
  @override
  @JsonKey(name: "name")
  String get categoryName;
  @override
  @JsonKey(name: "service")
  String get serviceId;
  @override
  @JsonKey(name: "branch")
  String get branchId;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get version;

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleCategoryModelImplCopyWith<_$SingleCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
