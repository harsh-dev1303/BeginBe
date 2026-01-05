// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountDetailsModel _$AccountDetailsModelFromJson(Map<String, dynamic> json) {
  return _AccountDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AccountDetailsModel {
  @JsonKey(name: "data")
  AccountData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "support")
  AccountSupport get support => throw _privateConstructorUsedError;
  @JsonKey(name: "_meta")
  AccountMeta get meta => throw _privateConstructorUsedError;

  /// Serializes this AccountDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDetailsModelCopyWith<AccountDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsModelCopyWith<$Res> {
  factory $AccountDetailsModelCopyWith(
    AccountDetailsModel value,
    $Res Function(AccountDetailsModel) then,
  ) = _$AccountDetailsModelCopyWithImpl<$Res, AccountDetailsModel>;
  @useResult
  $Res call({
    @JsonKey(name: "data") AccountData data,
    @JsonKey(name: "support") AccountSupport support,
    @JsonKey(name: "_meta") AccountMeta meta,
  });

  $AccountDataCopyWith<$Res> get data;
  $AccountSupportCopyWith<$Res> get support;
  $AccountMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AccountDetailsModelCopyWithImpl<$Res, $Val extends AccountDetailsModel>
    implements $AccountDetailsModelCopyWith<$Res> {
  _$AccountDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? support = null,
    Object? meta = null,
  }) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as AccountData,
            support: null == support
                ? _value.support
                : support // ignore: cast_nullable_to_non_nullable
                      as AccountSupport,
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as AccountMeta,
          )
          as $Val,
    );
  }

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountDataCopyWith<$Res> get data {
    return $AccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountSupportCopyWith<$Res> get support {
    return $AccountSupportCopyWith<$Res>(_value.support, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountMetaCopyWith<$Res> get meta {
    return $AccountMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDetailsModelImplCopyWith<$Res>
    implements $AccountDetailsModelCopyWith<$Res> {
  factory _$$AccountDetailsModelImplCopyWith(
    _$AccountDetailsModelImpl value,
    $Res Function(_$AccountDetailsModelImpl) then,
  ) = __$$AccountDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "data") AccountData data,
    @JsonKey(name: "support") AccountSupport support,
    @JsonKey(name: "_meta") AccountMeta meta,
  });

  @override
  $AccountDataCopyWith<$Res> get data;
  @override
  $AccountSupportCopyWith<$Res> get support;
  @override
  $AccountMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$AccountDetailsModelImplCopyWithImpl<$Res>
    extends _$AccountDetailsModelCopyWithImpl<$Res, _$AccountDetailsModelImpl>
    implements _$$AccountDetailsModelImplCopyWith<$Res> {
  __$$AccountDetailsModelImplCopyWithImpl(
    _$AccountDetailsModelImpl _value,
    $Res Function(_$AccountDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? support = null,
    Object? meta = null,
  }) {
    return _then(
      _$AccountDetailsModelImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as AccountData,
        support: null == support
            ? _value.support
            : support // ignore: cast_nullable_to_non_nullable
                  as AccountSupport,
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as AccountMeta,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDetailsModelImpl extends _AccountDetailsModel {
  _$AccountDetailsModelImpl({
    @JsonKey(name: "data") required this.data,
    @JsonKey(name: "support") required this.support,
    @JsonKey(name: "_meta") required this.meta,
  }) : super._();

  factory _$AccountDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final AccountData data;
  @override
  @JsonKey(name: "support")
  final AccountSupport support;
  @override
  @JsonKey(name: "_meta")
  final AccountMeta meta;

  @override
  String toString() {
    return 'AccountDetailsModel(data: $data, support: $support, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDetailsModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.support, support) || other.support == support) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, support, meta);

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDetailsModelImplCopyWith<_$AccountDetailsModelImpl> get copyWith =>
      __$$AccountDetailsModelImplCopyWithImpl<_$AccountDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDetailsModelImplToJson(this);
  }
}

abstract class _AccountDetailsModel extends AccountDetailsModel {
  factory _AccountDetailsModel({
    @JsonKey(name: "data") required final AccountData data,
    @JsonKey(name: "support") required final AccountSupport support,
    @JsonKey(name: "_meta") required final AccountMeta meta,
  }) = _$AccountDetailsModelImpl;
  _AccountDetailsModel._() : super._();

  factory _AccountDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AccountDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  AccountData get data;
  @override
  @JsonKey(name: "support")
  AccountSupport get support;
  @override
  @JsonKey(name: "_meta")
  AccountMeta get meta;

  /// Create a copy of AccountDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDetailsModelImplCopyWith<_$AccountDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
