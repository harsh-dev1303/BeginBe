// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignupSuccessEntity {
  String get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Create a copy of SignupSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupSuccessEntityCopyWith<SignupSuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupSuccessEntityCopyWith<$Res> {
  factory $SignupSuccessEntityCopyWith(
    SignupSuccessEntity value,
    $Res Function(SignupSuccessEntity) then,
  ) = _$SignupSuccessEntityCopyWithImpl<$Res, SignupSuccessEntity>;
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class _$SignupSuccessEntityCopyWithImpl<$Res, $Val extends SignupSuccessEntity>
    implements $SignupSuccessEntityCopyWith<$Res> {
  _$SignupSuccessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? token = null}) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$SignupSuccessEntityImplCopyWith<$Res>
    implements $SignupSuccessEntityCopyWith<$Res> {
  factory _$$SignupSuccessEntityImplCopyWith(
    _$SignupSuccessEntityImpl value,
    $Res Function(_$SignupSuccessEntityImpl) then,
  ) = __$$SignupSuccessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class __$$SignupSuccessEntityImplCopyWithImpl<$Res>
    extends _$SignupSuccessEntityCopyWithImpl<$Res, _$SignupSuccessEntityImpl>
    implements _$$SignupSuccessEntityImplCopyWith<$Res> {
  __$$SignupSuccessEntityImplCopyWithImpl(
    _$SignupSuccessEntityImpl _value,
    $Res Function(_$SignupSuccessEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? token = null}) {
    return _then(
      _$SignupSuccessEntityImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SignupSuccessEntityImpl implements _SignupSuccessEntity {
  _$SignupSuccessEntityImpl({required this.userId, required this.token});

  @override
  final String userId;
  @override
  final String token;

  @override
  String toString() {
    return 'SignupSuccessEntity(userId: $userId, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, token);

  /// Create a copy of SignupSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessEntityImplCopyWith<_$SignupSuccessEntityImpl> get copyWith =>
      __$$SignupSuccessEntityImplCopyWithImpl<_$SignupSuccessEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _SignupSuccessEntity implements SignupSuccessEntity {
  factory _SignupSuccessEntity({
    required final String userId,
    required final String token,
  }) = _$SignupSuccessEntityImpl;

  @override
  String get userId;
  @override
  String get token;

  /// Create a copy of SignupSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSuccessEntityImplCopyWith<_$SignupSuccessEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
