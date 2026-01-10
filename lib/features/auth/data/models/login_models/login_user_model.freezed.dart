// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) {
  return _LoginUserModel.fromJson(json);
}

/// @nodoc
mixin _$LoginUserModel {
  @JsonKey(name: "id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;

  /// Serializes this LoginUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginUserModelCopyWith<LoginUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserModelCopyWith<$Res> {
  factory $LoginUserModelCopyWith(
    LoginUserModel value,
    $Res Function(LoginUserModel) then,
  ) = _$LoginUserModelCopyWithImpl<$Res, LoginUserModel>;
  @useResult
  $Res call({
    @JsonKey(name: "id") String userId,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "role") String role,
  });
}

/// @nodoc
class _$LoginUserModelCopyWithImpl<$Res, $Val extends LoginUserModel>
    implements $LoginUserModelCopyWith<$Res> {
  _$LoginUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginUserModel
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
abstract class _$$LoginUserModelImplCopyWith<$Res>
    implements $LoginUserModelCopyWith<$Res> {
  factory _$$LoginUserModelImplCopyWith(
    _$LoginUserModelImpl value,
    $Res Function(_$LoginUserModelImpl) then,
  ) = __$$LoginUserModelImplCopyWithImpl<$Res>;
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
class __$$LoginUserModelImplCopyWithImpl<$Res>
    extends _$LoginUserModelCopyWithImpl<$Res, _$LoginUserModelImpl>
    implements _$$LoginUserModelImplCopyWith<$Res> {
  __$$LoginUserModelImplCopyWithImpl(
    _$LoginUserModelImpl _value,
    $Res Function(_$LoginUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginUserModel
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
      _$LoginUserModelImpl(
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
class _$LoginUserModelImpl implements _LoginUserModel {
  _$LoginUserModelImpl({
    @JsonKey(name: "id") required this.userId,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "email") required this.email,
    @JsonKey(name: "role") required this.role,
  });

  factory _$LoginUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserModelImplFromJson(json);

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
    return 'LoginUserModel(userId: $userId, name: $name, email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, email, role);

  /// Create a copy of LoginUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserModelImplCopyWith<_$LoginUserModelImpl> get copyWith =>
      __$$LoginUserModelImplCopyWithImpl<_$LoginUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserModelImplToJson(this);
  }
}

abstract class _LoginUserModel implements LoginUserModel {
  factory _LoginUserModel({
    @JsonKey(name: "id") required final String userId,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "email") required final String email,
    @JsonKey(name: "role") required final String role,
  }) = _$LoginUserModelImpl;

  factory _LoginUserModel.fromJson(Map<String, dynamic> json) =
      _$LoginUserModelImpl.fromJson;

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

  /// Create a copy of LoginUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserModelImplCopyWith<_$LoginUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
