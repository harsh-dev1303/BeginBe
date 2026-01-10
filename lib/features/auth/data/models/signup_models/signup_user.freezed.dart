// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignupUser _$SignupUserFromJson(Map<String, dynamic> json) {
  return _SignupUser.fromJson(json);
}

/// @nodoc
mixin _$SignupUser {
  @JsonKey(name: "id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;

  /// Serializes this SignupUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupUserCopyWith<SignupUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupUserCopyWith<$Res> {
  factory $SignupUserCopyWith(
    SignupUser value,
    $Res Function(SignupUser) then,
  ) = _$SignupUserCopyWithImpl<$Res, SignupUser>;
  @useResult
  $Res call({
    @JsonKey(name: "id") String userId,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "role") String role,
  });
}

/// @nodoc
class _$SignupUserCopyWithImpl<$Res, $Val extends SignupUser>
    implements $SignupUserCopyWith<$Res> {
  _$SignupUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignupUserImplCopyWith<$Res>
    implements $SignupUserCopyWith<$Res> {
  factory _$$SignupUserImplCopyWith(
    _$SignupUserImpl value,
    $Res Function(_$SignupUserImpl) then,
  ) = __$$SignupUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") String userId,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "role") String role,
  });
}

/// @nodoc
class __$$SignupUserImplCopyWithImpl<$Res>
    extends _$SignupUserCopyWithImpl<$Res, _$SignupUserImpl>
    implements _$$SignupUserImplCopyWith<$Res> {
  __$$SignupUserImplCopyWithImpl(
    _$SignupUserImpl _value,
    $Res Function(_$SignupUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
  }) {
    return _then(
      _$SignupUserImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupUserImpl implements _SignupUser {
  _$SignupUserImpl({
    @JsonKey(name: "id") required this.userId,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "email") required this.email,
    @JsonKey(name: "role") required this.role,
  });

  factory _$SignupUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupUserImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String userId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "role")
  final String role;

  @override
  String toString() {
    return 'SignupUser(userId: $userId, name: $name, email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, email, role);

  /// Create a copy of SignupUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupUserImplCopyWith<_$SignupUserImpl> get copyWith =>
      __$$SignupUserImplCopyWithImpl<_$SignupUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupUserImplToJson(this);
  }
}

abstract class _SignupUser implements SignupUser {
  factory _SignupUser({
    @JsonKey(name: "id") required final String userId,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "email") required final String email,
    @JsonKey(name: "role") required final String role,
  }) = _$SignupUserImpl;

  factory _SignupUser.fromJson(Map<String, dynamic> json) =
      _$SignupUserImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get userId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "role")
  String get role;

  /// Create a copy of SignupUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupUserImplCopyWith<_$SignupUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
