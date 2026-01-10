// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ServicesEntity {
  List<SingleServiceEntity> get services => throw _privateConstructorUsedError;

  /// Create a copy of ServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesEntityCopyWith<ServicesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesEntityCopyWith<$Res> {
  factory $ServicesEntityCopyWith(
    ServicesEntity value,
    $Res Function(ServicesEntity) then,
  ) = _$ServicesEntityCopyWithImpl<$Res, ServicesEntity>;
  @useResult
  $Res call({List<SingleServiceEntity> services});
}

/// @nodoc
class _$ServicesEntityCopyWithImpl<$Res, $Val extends ServicesEntity>
    implements $ServicesEntityCopyWith<$Res> {
  _$ServicesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? services = null}) {
    return _then(
      _value.copyWith(
            services: null == services
                ? _value.services
                : services // ignore: cast_nullable_to_non_nullable
                      as List<SingleServiceEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServicesEntityImplCopyWith<$Res>
    implements $ServicesEntityCopyWith<$Res> {
  factory _$$ServicesEntityImplCopyWith(
    _$ServicesEntityImpl value,
    $Res Function(_$ServicesEntityImpl) then,
  ) = __$$ServicesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SingleServiceEntity> services});
}

/// @nodoc
class __$$ServicesEntityImplCopyWithImpl<$Res>
    extends _$ServicesEntityCopyWithImpl<$Res, _$ServicesEntityImpl>
    implements _$$ServicesEntityImplCopyWith<$Res> {
  __$$ServicesEntityImplCopyWithImpl(
    _$ServicesEntityImpl _value,
    $Res Function(_$ServicesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? services = null}) {
    return _then(
      _$ServicesEntityImpl(
        services: null == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<SingleServiceEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ServicesEntityImpl implements _ServicesEntity {
  _$ServicesEntityImpl({required final List<SingleServiceEntity> services})
    : _services = services;

  final List<SingleServiceEntity> _services;
  @override
  List<SingleServiceEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServicesEntity(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesEntityImpl &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  /// Create a copy of ServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesEntityImplCopyWith<_$ServicesEntityImpl> get copyWith =>
      __$$ServicesEntityImplCopyWithImpl<_$ServicesEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ServicesEntity implements ServicesEntity {
  factory _ServicesEntity({required final List<SingleServiceEntity> services}) =
      _$ServicesEntityImpl;

  @override
  List<SingleServiceEntity> get services;

  /// Create a copy of ServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesEntityImplCopyWith<_$ServicesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
