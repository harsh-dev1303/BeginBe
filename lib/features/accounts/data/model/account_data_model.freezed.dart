// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountDataModel _$AccountDataModelFromJson(Map<String, dynamic> json) {
  return _AccountDataModel.fromJson(json);
}

/// @nodoc
mixin _$AccountDataModel {
  @JsonKey(name: "id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get linkedEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String get profileUrl => throw _privateConstructorUsedError;

  /// Serializes this AccountDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDataModelCopyWith<AccountDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDataModelCopyWith<$Res> {
  factory $AccountDataModelCopyWith(
    AccountDataModel value,
    $Res Function(AccountDataModel) then,
  ) = _$AccountDataModelCopyWithImpl<$Res, AccountDataModel>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int userId,
    @JsonKey(name: "email") String linkedEmail,
    @JsonKey(name: "first_name") String firstName,
    @JsonKey(name: "last_name") String lastName,
    @JsonKey(name: "avatar") String profileUrl,
  });
}

/// @nodoc
class _$AccountDataModelCopyWithImpl<$Res, $Val extends AccountDataModel>
    implements $AccountDataModelCopyWith<$Res> {
  _$AccountDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? linkedEmail = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profileUrl = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            linkedEmail: null == linkedEmail
                ? _value.linkedEmail
                : linkedEmail // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            profileUrl: null == profileUrl
                ? _value.profileUrl
                : profileUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountDataModelImplCopyWith<$Res>
    implements $AccountDataModelCopyWith<$Res> {
  factory _$$AccountDataModelImplCopyWith(
    _$AccountDataModelImpl value,
    $Res Function(_$AccountDataModelImpl) then,
  ) = __$$AccountDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int userId,
    @JsonKey(name: "email") String linkedEmail,
    @JsonKey(name: "first_name") String firstName,
    @JsonKey(name: "last_name") String lastName,
    @JsonKey(name: "avatar") String profileUrl,
  });
}

/// @nodoc
class __$$AccountDataModelImplCopyWithImpl<$Res>
    extends _$AccountDataModelCopyWithImpl<$Res, _$AccountDataModelImpl>
    implements _$$AccountDataModelImplCopyWith<$Res> {
  __$$AccountDataModelImplCopyWithImpl(
    _$AccountDataModelImpl _value,
    $Res Function(_$AccountDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? linkedEmail = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profileUrl = null,
  }) {
    return _then(
      _$AccountDataModelImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        linkedEmail: null == linkedEmail
            ? _value.linkedEmail
            : linkedEmail // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        profileUrl: null == profileUrl
            ? _value.profileUrl
            : profileUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDataModelImpl extends _AccountDataModel {
  _$AccountDataModelImpl({
    @JsonKey(name: "id") required this.userId,
    @JsonKey(name: "email") required this.linkedEmail,
    @JsonKey(name: "first_name") required this.firstName,
    @JsonKey(name: "last_name") required this.lastName,
    @JsonKey(name: "avatar") required this.profileUrl,
  }) : super._();

  factory _$AccountDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDataModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int userId;
  @override
  @JsonKey(name: "email")
  final String linkedEmail;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "avatar")
  final String profileUrl;

  @override
  String toString() {
    return 'AccountDataModel(userId: $userId, linkedEmail: $linkedEmail, firstName: $firstName, lastName: $lastName, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDataModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.linkedEmail, linkedEmail) ||
                other.linkedEmail == linkedEmail) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    linkedEmail,
    firstName,
    lastName,
    profileUrl,
  );

  /// Create a copy of AccountDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDataModelImplCopyWith<_$AccountDataModelImpl> get copyWith =>
      __$$AccountDataModelImplCopyWithImpl<_$AccountDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDataModelImplToJson(this);
  }
}

abstract class _AccountDataModel extends AccountDataModel {
  factory _AccountDataModel({
    @JsonKey(name: "id") required final int userId,
    @JsonKey(name: "email") required final String linkedEmail,
    @JsonKey(name: "first_name") required final String firstName,
    @JsonKey(name: "last_name") required final String lastName,
    @JsonKey(name: "avatar") required final String profileUrl,
  }) = _$AccountDataModelImpl;
  _AccountDataModel._() : super._();

  factory _AccountDataModel.fromJson(Map<String, dynamic> json) =
      _$AccountDataModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get userId;
  @override
  @JsonKey(name: "email")
  String get linkedEmail;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "avatar")
  String get profileUrl;

  /// Create a copy of AccountDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDataModelImplCopyWith<_$AccountDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
