// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountSupport _$AccountSupportFromJson(Map<String, dynamic> json) {
  return _AccountSupport.fromJson(json);
}

/// @nodoc
mixin _$AccountSupport {
  String get url => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this AccountSupport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSupport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSupportCopyWith<AccountSupport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSupportCopyWith<$Res> {
  factory $AccountSupportCopyWith(
    AccountSupport value,
    $Res Function(AccountSupport) then,
  ) = _$AccountSupportCopyWithImpl<$Res, AccountSupport>;
  @useResult
  $Res call({String url, String text});
}

/// @nodoc
class _$AccountSupportCopyWithImpl<$Res, $Val extends AccountSupport>
    implements $AccountSupportCopyWith<$Res> {
  _$AccountSupportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSupport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null, Object? text = null}) {
    return _then(
      _value.copyWith(
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountSupportImplCopyWith<$Res>
    implements $AccountSupportCopyWith<$Res> {
  factory _$$AccountSupportImplCopyWith(
    _$AccountSupportImpl value,
    $Res Function(_$AccountSupportImpl) then,
  ) = __$$AccountSupportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String text});
}

/// @nodoc
class __$$AccountSupportImplCopyWithImpl<$Res>
    extends _$AccountSupportCopyWithImpl<$Res, _$AccountSupportImpl>
    implements _$$AccountSupportImplCopyWith<$Res> {
  __$$AccountSupportImplCopyWithImpl(
    _$AccountSupportImpl _value,
    $Res Function(_$AccountSupportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountSupport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null, Object? text = null}) {
    return _then(
      _$AccountSupportImpl(
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSupportImpl implements _AccountSupport {
  _$AccountSupportImpl({required this.url, required this.text});

  factory _$AccountSupportImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSupportImplFromJson(json);

  @override
  final String url;
  @override
  final String text;

  @override
  String toString() {
    return 'AccountSupport(url: $url, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSupportImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, text);

  /// Create a copy of AccountSupport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSupportImplCopyWith<_$AccountSupportImpl> get copyWith =>
      __$$AccountSupportImplCopyWithImpl<_$AccountSupportImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSupportImplToJson(this);
  }
}

abstract class _AccountSupport implements AccountSupport {
  factory _AccountSupport({
    required final String url,
    required final String text,
  }) = _$AccountSupportImpl;

  factory _AccountSupport.fromJson(Map<String, dynamic> json) =
      _$AccountSupportImpl.fromJson;

  @override
  String get url;
  @override
  String get text;

  /// Create a copy of AccountSupport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSupportImplCopyWith<_$AccountSupportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
