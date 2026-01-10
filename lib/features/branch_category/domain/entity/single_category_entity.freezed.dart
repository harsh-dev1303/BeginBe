// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SingleCategoryEntity {
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get serviceId => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;

  /// Create a copy of SingleCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleCategoryEntityCopyWith<SingleCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCategoryEntityCopyWith<$Res> {
  factory $SingleCategoryEntityCopyWith(
    SingleCategoryEntity value,
    $Res Function(SingleCategoryEntity) then,
  ) = _$SingleCategoryEntityCopyWithImpl<$Res, SingleCategoryEntity>;
  @useResult
  $Res call({
    String categoryId,
    String categoryName,
    String serviceId,
    String branchId,
  });
}

/// @nodoc
class _$SingleCategoryEntityCopyWithImpl<
  $Res,
  $Val extends SingleCategoryEntity
>
    implements $SingleCategoryEntityCopyWith<$Res> {
  _$SingleCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? serviceId = null,
    Object? branchId = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SingleCategoryEntityImplCopyWith<$Res>
    implements $SingleCategoryEntityCopyWith<$Res> {
  factory _$$SingleCategoryEntityImplCopyWith(
    _$SingleCategoryEntityImpl value,
    $Res Function(_$SingleCategoryEntityImpl) then,
  ) = __$$SingleCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String categoryId,
    String categoryName,
    String serviceId,
    String branchId,
  });
}

/// @nodoc
class __$$SingleCategoryEntityImplCopyWithImpl<$Res>
    extends _$SingleCategoryEntityCopyWithImpl<$Res, _$SingleCategoryEntityImpl>
    implements _$$SingleCategoryEntityImplCopyWith<$Res> {
  __$$SingleCategoryEntityImplCopyWithImpl(
    _$SingleCategoryEntityImpl _value,
    $Res Function(_$SingleCategoryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SingleCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? serviceId = null,
    Object? branchId = null,
  }) {
    return _then(
      _$SingleCategoryEntityImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$SingleCategoryEntityImpl implements _SingleCategoryEntity {
  _$SingleCategoryEntityImpl({
    required this.categoryId,
    required this.categoryName,
    required this.serviceId,
    required this.branchId,
  });

  @override
  final String categoryId;
  @override
  final String categoryName;
  @override
  final String serviceId;
  @override
  final String branchId;

  @override
  String toString() {
    return 'SingleCategoryEntity(categoryId: $categoryId, categoryName: $categoryName, serviceId: $serviceId, branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCategoryEntityImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, categoryName, serviceId, branchId);

  /// Create a copy of SingleCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCategoryEntityImplCopyWith<_$SingleCategoryEntityImpl>
  get copyWith =>
      __$$SingleCategoryEntityImplCopyWithImpl<_$SingleCategoryEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _SingleCategoryEntity implements SingleCategoryEntity {
  factory _SingleCategoryEntity({
    required final String categoryId,
    required final String categoryName,
    required final String serviceId,
    required final String branchId,
  }) = _$SingleCategoryEntityImpl;

  @override
  String get categoryId;
  @override
  String get categoryName;
  @override
  String get serviceId;
  @override
  String get branchId;

  /// Create a copy of SingleCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleCategoryEntityImplCopyWith<_$SingleCategoryEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
