// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginSuccessEntity {
  String get token => throw _privateConstructorUsedError;

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginSuccessEntityCopyWith<LoginSuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessEntityCopyWith<$Res> {
  factory $LoginSuccessEntityCopyWith(
    LoginSuccessEntity value,
    $Res Function(LoginSuccessEntity) then,
  ) = _$LoginSuccessEntityCopyWithImpl<$Res, LoginSuccessEntity>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$LoginSuccessEntityCopyWithImpl<$Res, $Val extends LoginSuccessEntity>
    implements $LoginSuccessEntityCopyWith<$Res> {
  _$LoginSuccessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null}) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginSuccessEntityImplCopyWith<$Res>
    implements $LoginSuccessEntityCopyWith<$Res> {
  factory _$$LoginSuccessEntityImplCopyWith(
    _$LoginSuccessEntityImpl value,
    $Res Function(_$LoginSuccessEntityImpl) then,
  ) = __$$LoginSuccessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$LoginSuccessEntityImplCopyWithImpl<$Res>
    extends _$LoginSuccessEntityCopyWithImpl<$Res, _$LoginSuccessEntityImpl>
    implements _$$LoginSuccessEntityImplCopyWith<$Res> {
  __$$LoginSuccessEntityImplCopyWithImpl(
    _$LoginSuccessEntityImpl _value,
    $Res Function(_$LoginSuccessEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null}) {
    return _then(
      _$LoginSuccessEntityImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginSuccessEntityImpl implements _LoginSuccessEntity {
  _$LoginSuccessEntityImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LoginSuccessEntity(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessEntityImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessEntityImplCopyWith<_$LoginSuccessEntityImpl> get copyWith =>
      __$$LoginSuccessEntityImplCopyWithImpl<_$LoginSuccessEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _LoginSuccessEntity implements LoginSuccessEntity {
  factory _LoginSuccessEntity({required final String token}) =
      _$LoginSuccessEntityImpl;

  @override
  String get token;

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessEntityImplCopyWith<_$LoginSuccessEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
