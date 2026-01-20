// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_date_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpecificDateToken _$SpecificDateTokenFromJson(Map<String, dynamic> json) {
  return _SpecificDateToken.fromJson(json);
}

/// @nodoc
mixin _$SpecificDateToken {
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "queueLength")
  String get queueLength => throw _privateConstructorUsedError;
  @JsonKey(name: "peopleAhead")
  String get peopleAhead => throw _privateConstructorUsedError;
  @JsonKey(name: "estimatedWaitTime")
  String get estimatedWaitTime => throw _privateConstructorUsedError;

  /// Serializes this SpecificDateToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecificDateToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecificDateTokenCopyWith<SpecificDateToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificDateTokenCopyWith<$Res> {
  factory $SpecificDateTokenCopyWith(
    SpecificDateToken value,
    $Res Function(SpecificDateToken) then,
  ) = _$SpecificDateTokenCopyWithImpl<$Res, SpecificDateToken>;
  @useResult
  $Res call({
    @JsonKey(name: "date") String date,
    @JsonKey(name: "queueLength") String queueLength,
    @JsonKey(name: "peopleAhead") String peopleAhead,
    @JsonKey(name: "estimatedWaitTime") String estimatedWaitTime,
  });
}

/// @nodoc
class _$SpecificDateTokenCopyWithImpl<$Res, $Val extends SpecificDateToken>
    implements $SpecificDateTokenCopyWith<$Res> {
  _$SpecificDateTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecificDateToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? queueLength = null,
    Object? peopleAhead = null,
    Object? estimatedWaitTime = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            queueLength: null == queueLength
                ? _value.queueLength
                : queueLength // ignore: cast_nullable_to_non_nullable
                      as String,
            peopleAhead: null == peopleAhead
                ? _value.peopleAhead
                : peopleAhead // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedWaitTime: null == estimatedWaitTime
                ? _value.estimatedWaitTime
                : estimatedWaitTime // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpecificDateTokenImplCopyWith<$Res>
    implements $SpecificDateTokenCopyWith<$Res> {
  factory _$$SpecificDateTokenImplCopyWith(
    _$SpecificDateTokenImpl value,
    $Res Function(_$SpecificDateTokenImpl) then,
  ) = __$$SpecificDateTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "date") String date,
    @JsonKey(name: "queueLength") String queueLength,
    @JsonKey(name: "peopleAhead") String peopleAhead,
    @JsonKey(name: "estimatedWaitTime") String estimatedWaitTime,
  });
}

/// @nodoc
class __$$SpecificDateTokenImplCopyWithImpl<$Res>
    extends _$SpecificDateTokenCopyWithImpl<$Res, _$SpecificDateTokenImpl>
    implements _$$SpecificDateTokenImplCopyWith<$Res> {
  __$$SpecificDateTokenImplCopyWithImpl(
    _$SpecificDateTokenImpl _value,
    $Res Function(_$SpecificDateTokenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpecificDateToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? queueLength = null,
    Object? peopleAhead = null,
    Object? estimatedWaitTime = null,
  }) {
    return _then(
      _$SpecificDateTokenImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        queueLength: null == queueLength
            ? _value.queueLength
            : queueLength // ignore: cast_nullable_to_non_nullable
                  as String,
        peopleAhead: null == peopleAhead
            ? _value.peopleAhead
            : peopleAhead // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedWaitTime: null == estimatedWaitTime
            ? _value.estimatedWaitTime
            : estimatedWaitTime // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecificDateTokenImpl extends _SpecificDateToken {
  _$SpecificDateTokenImpl({
    @JsonKey(name: "date") required this.date,
    @JsonKey(name: "queueLength") required this.queueLength,
    @JsonKey(name: "peopleAhead") required this.peopleAhead,
    @JsonKey(name: "estimatedWaitTime") required this.estimatedWaitTime,
  }) : super._();

  factory _$SpecificDateTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecificDateTokenImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final String date;
  @override
  @JsonKey(name: "queueLength")
  final String queueLength;
  @override
  @JsonKey(name: "peopleAhead")
  final String peopleAhead;
  @override
  @JsonKey(name: "estimatedWaitTime")
  final String estimatedWaitTime;

  @override
  String toString() {
    return 'SpecificDateToken(date: $date, queueLength: $queueLength, peopleAhead: $peopleAhead, estimatedWaitTime: $estimatedWaitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificDateTokenImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.queueLength, queueLength) ||
                other.queueLength == queueLength) &&
            (identical(other.peopleAhead, peopleAhead) ||
                other.peopleAhead == peopleAhead) &&
            (identical(other.estimatedWaitTime, estimatedWaitTime) ||
                other.estimatedWaitTime == estimatedWaitTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    queueLength,
    peopleAhead,
    estimatedWaitTime,
  );

  /// Create a copy of SpecificDateToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificDateTokenImplCopyWith<_$SpecificDateTokenImpl> get copyWith =>
      __$$SpecificDateTokenImplCopyWithImpl<_$SpecificDateTokenImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecificDateTokenImplToJson(this);
  }
}

abstract class _SpecificDateToken extends SpecificDateToken {
  factory _SpecificDateToken({
    @JsonKey(name: "date") required final String date,
    @JsonKey(name: "queueLength") required final String queueLength,
    @JsonKey(name: "peopleAhead") required final String peopleAhead,
    @JsonKey(name: "estimatedWaitTime") required final String estimatedWaitTime,
  }) = _$SpecificDateTokenImpl;
  _SpecificDateToken._() : super._();

  factory _SpecificDateToken.fromJson(Map<String, dynamic> json) =
      _$SpecificDateTokenImpl.fromJson;

  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(name: "queueLength")
  String get queueLength;
  @override
  @JsonKey(name: "peopleAhead")
  String get peopleAhead;
  @override
  @JsonKey(name: "estimatedWaitTime")
  String get estimatedWaitTime;

  /// Create a copy of SpecificDateToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificDateTokenImplCopyWith<_$SpecificDateTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
