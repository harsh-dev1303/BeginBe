// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AccountEntity {
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

  /// Create a copy of AccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountEntityCopyWith<AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityCopyWith<$Res> {
  factory $AccountEntityCopyWith(
    AccountEntity value,
    $Res Function(AccountEntity) then,
  ) = _$AccountEntityCopyWithImpl<$Res, AccountEntity>;
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
class _$AccountEntityCopyWithImpl<$Res, $Val extends AccountEntity>
    implements $AccountEntityCopyWith<$Res> {
  _$AccountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountEntity
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
abstract class _$$AccountEntityImplCopyWith<$Res>
    implements $AccountEntityCopyWith<$Res> {
  factory _$$AccountEntityImplCopyWith(
    _$AccountEntityImpl value,
    $Res Function(_$AccountEntityImpl) then,
  ) = __$$AccountEntityImplCopyWithImpl<$Res>;
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
class __$$AccountEntityImplCopyWithImpl<$Res>
    extends _$AccountEntityCopyWithImpl<$Res, _$AccountEntityImpl>
    implements _$$AccountEntityImplCopyWith<$Res> {
  __$$AccountEntityImplCopyWithImpl(
    _$AccountEntityImpl _value,
    $Res Function(_$AccountEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountEntity
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
      _$AccountEntityImpl(
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

class _$AccountEntityImpl
    with DiagnosticableTreeMixin
    implements _AccountEntity {
  _$AccountEntityImpl({
    @JsonKey(name: "id") required this.userId,
    @JsonKey(name: "email") required this.linkedEmail,
    @JsonKey(name: "first_name") required this.firstName,
    @JsonKey(name: "last_name") required this.lastName,
    @JsonKey(name: "avatar") required this.profileUrl,
  });

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEntity(userId: $userId, linkedEmail: $linkedEmail, firstName: $firstName, lastName: $lastName, profileUrl: $profileUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountEntity'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('linkedEmail', linkedEmail))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('profileUrl', profileUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEntityImpl &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    linkedEmail,
    firstName,
    lastName,
    profileUrl,
  );

  /// Create a copy of AccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEntityImplCopyWith<_$AccountEntityImpl> get copyWith =>
      __$$AccountEntityImplCopyWithImpl<_$AccountEntityImpl>(this, _$identity);
}

abstract class _AccountEntity implements AccountEntity {
  factory _AccountEntity({
    @JsonKey(name: "id") required final int userId,
    @JsonKey(name: "email") required final String linkedEmail,
    @JsonKey(name: "first_name") required final String firstName,
    @JsonKey(name: "last_name") required final String lastName,
    @JsonKey(name: "avatar") required final String profileUrl,
  }) = _$AccountEntityImpl;

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

  /// Create a copy of AccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountEntityImplCopyWith<_$AccountEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
