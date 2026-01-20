// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_date_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SpecificDateDetail {
  String get date => throw _privateConstructorUsedError;
  String get queueLength => throw _privateConstructorUsedError;
  String get peopleAhead => throw _privateConstructorUsedError;
  String get estimatedWaitTime => throw _privateConstructorUsedError;

  /// Create a copy of SpecificDateDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecificDateDetailCopyWith<SpecificDateDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificDateDetailCopyWith<$Res> {
  factory $SpecificDateDetailCopyWith(
    SpecificDateDetail value,
    $Res Function(SpecificDateDetail) then,
  ) = _$SpecificDateDetailCopyWithImpl<$Res, SpecificDateDetail>;
  @useResult
  $Res call({
    String date,
    String queueLength,
    String peopleAhead,
    String estimatedWaitTime,
  });
}

/// @nodoc
class _$SpecificDateDetailCopyWithImpl<$Res, $Val extends SpecificDateDetail>
    implements $SpecificDateDetailCopyWith<$Res> {
  _$SpecificDateDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecificDateDetail
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
abstract class _$$SpecificDateDetailImplCopyWith<$Res>
    implements $SpecificDateDetailCopyWith<$Res> {
  factory _$$SpecificDateDetailImplCopyWith(
    _$SpecificDateDetailImpl value,
    $Res Function(_$SpecificDateDetailImpl) then,
  ) = __$$SpecificDateDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String date,
    String queueLength,
    String peopleAhead,
    String estimatedWaitTime,
  });
}

/// @nodoc
class __$$SpecificDateDetailImplCopyWithImpl<$Res>
    extends _$SpecificDateDetailCopyWithImpl<$Res, _$SpecificDateDetailImpl>
    implements _$$SpecificDateDetailImplCopyWith<$Res> {
  __$$SpecificDateDetailImplCopyWithImpl(
    _$SpecificDateDetailImpl _value,
    $Res Function(_$SpecificDateDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpecificDateDetail
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
      _$SpecificDateDetailImpl(
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

class _$SpecificDateDetailImpl implements _SpecificDateDetail {
  _$SpecificDateDetailImpl({
    required this.date,
    required this.queueLength,
    required this.peopleAhead,
    required this.estimatedWaitTime,
  });

  @override
  final String date;
  @override
  final String queueLength;
  @override
  final String peopleAhead;
  @override
  final String estimatedWaitTime;

  @override
  String toString() {
    return 'SpecificDateDetail(date: $date, queueLength: $queueLength, peopleAhead: $peopleAhead, estimatedWaitTime: $estimatedWaitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificDateDetailImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.queueLength, queueLength) ||
                other.queueLength == queueLength) &&
            (identical(other.peopleAhead, peopleAhead) ||
                other.peopleAhead == peopleAhead) &&
            (identical(other.estimatedWaitTime, estimatedWaitTime) ||
                other.estimatedWaitTime == estimatedWaitTime));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    queueLength,
    peopleAhead,
    estimatedWaitTime,
  );

  /// Create a copy of SpecificDateDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificDateDetailImplCopyWith<_$SpecificDateDetailImpl> get copyWith =>
      __$$SpecificDateDetailImplCopyWithImpl<_$SpecificDateDetailImpl>(
        this,
        _$identity,
      );
}

abstract class _SpecificDateDetail implements SpecificDateDetail {
  factory _SpecificDateDetail({
    required final String date,
    required final String queueLength,
    required final String peopleAhead,
    required final String estimatedWaitTime,
  }) = _$SpecificDateDetailImpl;

  @override
  String get date;
  @override
  String get queueLength;
  @override
  String get peopleAhead;
  @override
  String get estimatedWaitTime;

  /// Create a copy of SpecificDateDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificDateDetailImplCopyWith<_$SpecificDateDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
