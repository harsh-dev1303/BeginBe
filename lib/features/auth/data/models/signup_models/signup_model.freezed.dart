// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignupModel _$SignupModelFromJson(Map<String, dynamic> json) {
  return _SignupModel.fromJson(json);
}

/// @nodoc
mixin _$SignupModel {
  @JsonKey(name: "user")
  SignupUser get singUpUser => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;

  /// Serializes this SignupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupModelCopyWith<SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupModelCopyWith<$Res> {
  factory $SignupModelCopyWith(
    SignupModel value,
    $Res Function(SignupModel) then,
  ) = _$SignupModelCopyWithImpl<$Res, SignupModel>;
  @useResult
  $Res call({
    @JsonKey(name: "user") SignupUser singUpUser,
    @JsonKey(name: "token") String token,
  });

  $SignupUserCopyWith<$Res> get singUpUser;
}

/// @nodoc
class _$SignupModelCopyWithImpl<$Res, $Val extends SignupModel>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? singUpUser = null, Object? token = null}) {
    return _then(
      _value.copyWith(
            singUpUser: null == singUpUser
                ? _value.singUpUser
                : singUpUser // ignore: cast_nullable_to_non_nullable
                      as SignupUser,
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignupUserCopyWith<$Res> get singUpUser {
    return $SignupUserCopyWith<$Res>(_value.singUpUser, (value) {
      return _then(_value.copyWith(singUpUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupModelImplCopyWith<$Res>
    implements $SignupModelCopyWith<$Res> {
  factory _$$SignupModelImplCopyWith(
    _$SignupModelImpl value,
    $Res Function(_$SignupModelImpl) then,
  ) = __$$SignupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user") SignupUser singUpUser,
    @JsonKey(name: "token") String token,
  });

  @override
  $SignupUserCopyWith<$Res> get singUpUser;
}

/// @nodoc
class __$$SignupModelImplCopyWithImpl<$Res>
    extends _$SignupModelCopyWithImpl<$Res, _$SignupModelImpl>
    implements _$$SignupModelImplCopyWith<$Res> {
  __$$SignupModelImplCopyWithImpl(
    _$SignupModelImpl _value,
    $Res Function(_$SignupModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? singUpUser = null, Object? token = null}) {
    return _then(
      _$SignupModelImpl(
        singUpUser: null == singUpUser
            ? _value.singUpUser
            : singUpUser // ignore: cast_nullable_to_non_nullable
                  as SignupUser,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupModelImpl extends _SignupModel {
  _$SignupModelImpl({
    @JsonKey(name: "user") required this.singUpUser,
    @JsonKey(name: "token") required this.token,
  }) : super._();

  factory _$SignupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupModelImplFromJson(json);

  @override
  @JsonKey(name: "user")
  final SignupUser singUpUser;
  @override
  @JsonKey(name: "token")
  final String token;

  @override
  String toString() {
    return 'SignupModel(singUpUser: $singUpUser, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupModelImpl &&
            (identical(other.singUpUser, singUpUser) ||
                other.singUpUser == singUpUser) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, singUpUser, token);

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupModelImplCopyWith<_$SignupModelImpl> get copyWith =>
      __$$SignupModelImplCopyWithImpl<_$SignupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupModelImplToJson(this);
  }
}

abstract class _SignupModel extends SignupModel {
  factory _SignupModel({
    @JsonKey(name: "user") required final SignupUser singUpUser,
    @JsonKey(name: "token") required final String token,
  }) = _$SignupModelImpl;
  _SignupModel._() : super._();

  factory _SignupModel.fromJson(Map<String, dynamic> json) =
      _$SignupModelImpl.fromJson;

  @override
  @JsonKey(name: "user")
  SignupUser get singUpUser;
  @override
  @JsonKey(name: "token")
  String get token;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupModelImplCopyWith<_$SignupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
