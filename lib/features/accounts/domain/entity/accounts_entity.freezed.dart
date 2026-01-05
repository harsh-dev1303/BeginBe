// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AccountsEntity {
  @JsonKey(name: "data")
  List<AccountEntity> get accounts => throw _privateConstructorUsedError;

  /// Create a copy of AccountsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountsEntityCopyWith<AccountsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsEntityCopyWith<$Res> {
  factory $AccountsEntityCopyWith(
    AccountsEntity value,
    $Res Function(AccountsEntity) then,
  ) = _$AccountsEntityCopyWithImpl<$Res, AccountsEntity>;
  @useResult
  $Res call({@JsonKey(name: "data") List<AccountEntity> accounts});
}

/// @nodoc
class _$AccountsEntityCopyWithImpl<$Res, $Val extends AccountsEntity>
    implements $AccountsEntityCopyWith<$Res> {
  _$AccountsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accounts = null}) {
    return _then(
      _value.copyWith(
            accounts: null == accounts
                ? _value.accounts
                : accounts // ignore: cast_nullable_to_non_nullable
                      as List<AccountEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountsEntityImplCopyWith<$Res>
    implements $AccountsEntityCopyWith<$Res> {
  factory _$$AccountsEntityImplCopyWith(
    _$AccountsEntityImpl value,
    $Res Function(_$AccountsEntityImpl) then,
  ) = __$$AccountsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<AccountEntity> accounts});
}

/// @nodoc
class __$$AccountsEntityImplCopyWithImpl<$Res>
    extends _$AccountsEntityCopyWithImpl<$Res, _$AccountsEntityImpl>
    implements _$$AccountsEntityImplCopyWith<$Res> {
  __$$AccountsEntityImplCopyWithImpl(
    _$AccountsEntityImpl _value,
    $Res Function(_$AccountsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accounts = null}) {
    return _then(
      _$AccountsEntityImpl(
        accounts: null == accounts
            ? _value._accounts
            : accounts // ignore: cast_nullable_to_non_nullable
                  as List<AccountEntity>,
      ),
    );
  }
}

/// @nodoc

class _$AccountsEntityImpl implements _AccountsEntity {
  _$AccountsEntityImpl({
    @JsonKey(name: "data") required final List<AccountEntity> accounts,
  }) : _accounts = accounts;

  final List<AccountEntity> _accounts;
  @override
  @JsonKey(name: "data")
  List<AccountEntity> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'AccountsEntity(accounts: $accounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsEntityImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  /// Create a copy of AccountsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsEntityImplCopyWith<_$AccountsEntityImpl> get copyWith =>
      __$$AccountsEntityImplCopyWithImpl<_$AccountsEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _AccountsEntity implements AccountsEntity {
  factory _AccountsEntity({
    @JsonKey(name: "data") required final List<AccountEntity> accounts,
  }) = _$AccountsEntityImpl;

  @override
  @JsonKey(name: "data")
  List<AccountEntity> get accounts;

  /// Create a copy of AccountsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountsEntityImplCopyWith<_$AccountsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
