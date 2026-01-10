// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CategoriesEntity {
  List<SingleCategoryEntity> get categories =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesEntityCopyWith<CategoriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEntityCopyWith<$Res> {
  factory $CategoriesEntityCopyWith(
    CategoriesEntity value,
    $Res Function(CategoriesEntity) then,
  ) = _$CategoriesEntityCopyWithImpl<$Res, CategoriesEntity>;
  @useResult
  $Res call({List<SingleCategoryEntity> categories});
}

/// @nodoc
class _$CategoriesEntityCopyWithImpl<$Res, $Val extends CategoriesEntity>
    implements $CategoriesEntityCopyWith<$Res> {
  _$CategoriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null}) {
    return _then(
      _value.copyWith(
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<SingleCategoryEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoriesEntityImplCopyWith<$Res>
    implements $CategoriesEntityCopyWith<$Res> {
  factory _$$CategoriesEntityImplCopyWith(
    _$CategoriesEntityImpl value,
    $Res Function(_$CategoriesEntityImpl) then,
  ) = __$$CategoriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SingleCategoryEntity> categories});
}

/// @nodoc
class __$$CategoriesEntityImplCopyWithImpl<$Res>
    extends _$CategoriesEntityCopyWithImpl<$Res, _$CategoriesEntityImpl>
    implements _$$CategoriesEntityImplCopyWith<$Res> {
  __$$CategoriesEntityImplCopyWithImpl(
    _$CategoriesEntityImpl _value,
    $Res Function(_$CategoriesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null}) {
    return _then(
      _$CategoriesEntityImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<SingleCategoryEntity>,
      ),
    );
  }
}

/// @nodoc

class _$CategoriesEntityImpl implements _CategoriesEntity {
  _$CategoriesEntityImpl({required final List<SingleCategoryEntity> categories})
    : _categories = categories;

  final List<SingleCategoryEntity> _categories;
  @override
  List<SingleCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesEntity(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEntityImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
  );

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      __$$CategoriesEntityImplCopyWithImpl<_$CategoriesEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoriesEntity implements CategoriesEntity {
  factory _CategoriesEntity({
    required final List<SingleCategoryEntity> categories,
  }) = _$CategoriesEntityImpl;

  @override
  List<SingleCategoryEntity> get categories;

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
