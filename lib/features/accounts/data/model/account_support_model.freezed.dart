// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_support_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountSupportModel _$AccountSupportModelFromJson(Map<String, dynamic> json) {
  return _AccountSupportModel.fromJson(json);
}

/// @nodoc
mixin _$AccountSupportModel {
  String get url => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this AccountSupportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSupportModelCopyWith<AccountSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSupportModelCopyWith<$Res> {
  factory $AccountSupportModelCopyWith(
    AccountSupportModel value,
    $Res Function(AccountSupportModel) then,
  ) = _$AccountSupportModelCopyWithImpl<$Res, AccountSupportModel>;
  @useResult
  $Res call({String url, String text});
}

/// @nodoc
class _$AccountSupportModelCopyWithImpl<$Res, $Val extends AccountSupportModel>
    implements $AccountSupportModelCopyWith<$Res> {
  _$AccountSupportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSupportModel
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
abstract class _$$AccountSupportModelImplCopyWith<$Res>
    implements $AccountSupportModelCopyWith<$Res> {
  factory _$$AccountSupportModelImplCopyWith(
    _$AccountSupportModelImpl value,
    $Res Function(_$AccountSupportModelImpl) then,
  ) = __$$AccountSupportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String text});
}

/// @nodoc
class __$$AccountSupportModelImplCopyWithImpl<$Res>
    extends _$AccountSupportModelCopyWithImpl<$Res, _$AccountSupportModelImpl>
    implements _$$AccountSupportModelImplCopyWith<$Res> {
  __$$AccountSupportModelImplCopyWithImpl(
    _$AccountSupportModelImpl _value,
    $Res Function(_$AccountSupportModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null, Object? text = null}) {
    return _then(
      _$AccountSupportModelImpl(
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
class _$AccountSupportModelImpl implements _AccountSupportModel {
  _$AccountSupportModelImpl({required this.url, required this.text});

  factory _$AccountSupportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSupportModelImplFromJson(json);

  @override
  final String url;
  @override
  final String text;

  @override
  String toString() {
    return 'AccountSupportModel(url: $url, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSupportModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, text);

  /// Create a copy of AccountSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSupportModelImplCopyWith<_$AccountSupportModelImpl> get copyWith =>
      __$$AccountSupportModelImplCopyWithImpl<_$AccountSupportModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSupportModelImplToJson(this);
  }
}

abstract class _AccountSupportModel implements AccountSupportModel {
  factory _AccountSupportModel({
    required final String url,
    required final String text,
  }) = _$AccountSupportModelImpl;

  factory _AccountSupportModel.fromJson(Map<String, dynamic> json) =
      _$AccountSupportModelImpl.fromJson;

  @override
  String get url;
  @override
  String get text;

  /// Create a copy of AccountSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSupportModelImplCopyWith<_$AccountSupportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
