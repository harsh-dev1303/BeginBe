// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_queue_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LiveQueueEntity {
  String get tokenId => throw _privateConstructorUsedError;
  String get currentStatus => throw _privateConstructorUsedError;
  String get estimatedWaitTime => throw _privateConstructorUsedError;
  String get currentPosition => throw _privateConstructorUsedError;
  String get peopleAhead => throw _privateConstructorUsedError;
  String get counterStatus => throw _privateConstructorUsedError;

  /// Create a copy of LiveQueueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveQueueEntityCopyWith<LiveQueueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveQueueEntityCopyWith<$Res> {
  factory $LiveQueueEntityCopyWith(
    LiveQueueEntity value,
    $Res Function(LiveQueueEntity) then,
  ) = _$LiveQueueEntityCopyWithImpl<$Res, LiveQueueEntity>;
  @useResult
  $Res call({
    String tokenId,
    String currentStatus,
    String estimatedWaitTime,
    String currentPosition,
    String peopleAhead,
    String counterStatus,
  });
}

/// @nodoc
class _$LiveQueueEntityCopyWithImpl<$Res, $Val extends LiveQueueEntity>
    implements $LiveQueueEntityCopyWith<$Res> {
  _$LiveQueueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveQueueEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? currentStatus = null,
    Object? estimatedWaitTime = null,
    Object? currentPosition = null,
    Object? peopleAhead = null,
    Object? counterStatus = null,
  }) {
    return _then(
      _value.copyWith(
            tokenId: null == tokenId
                ? _value.tokenId
                : tokenId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentStatus: null == currentStatus
                ? _value.currentStatus
                : currentStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedWaitTime: null == estimatedWaitTime
                ? _value.estimatedWaitTime
                : estimatedWaitTime // ignore: cast_nullable_to_non_nullable
                      as String,
            currentPosition: null == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                      as String,
            peopleAhead: null == peopleAhead
                ? _value.peopleAhead
                : peopleAhead // ignore: cast_nullable_to_non_nullable
                      as String,
            counterStatus: null == counterStatus
                ? _value.counterStatus
                : counterStatus // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LiveQueueEntityImplCopyWith<$Res>
    implements $LiveQueueEntityCopyWith<$Res> {
  factory _$$LiveQueueEntityImplCopyWith(
    _$LiveQueueEntityImpl value,
    $Res Function(_$LiveQueueEntityImpl) then,
  ) = __$$LiveQueueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String tokenId,
    String currentStatus,
    String estimatedWaitTime,
    String currentPosition,
    String peopleAhead,
    String counterStatus,
  });
}

/// @nodoc
class __$$LiveQueueEntityImplCopyWithImpl<$Res>
    extends _$LiveQueueEntityCopyWithImpl<$Res, _$LiveQueueEntityImpl>
    implements _$$LiveQueueEntityImplCopyWith<$Res> {
  __$$LiveQueueEntityImplCopyWithImpl(
    _$LiveQueueEntityImpl _value,
    $Res Function(_$LiveQueueEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiveQueueEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? currentStatus = null,
    Object? estimatedWaitTime = null,
    Object? currentPosition = null,
    Object? peopleAhead = null,
    Object? counterStatus = null,
  }) {
    return _then(
      _$LiveQueueEntityImpl(
        tokenId: null == tokenId
            ? _value.tokenId
            : tokenId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentStatus: null == currentStatus
            ? _value.currentStatus
            : currentStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedWaitTime: null == estimatedWaitTime
            ? _value.estimatedWaitTime
            : estimatedWaitTime // ignore: cast_nullable_to_non_nullable
                  as String,
        currentPosition: null == currentPosition
            ? _value.currentPosition
            : currentPosition // ignore: cast_nullable_to_non_nullable
                  as String,
        peopleAhead: null == peopleAhead
            ? _value.peopleAhead
            : peopleAhead // ignore: cast_nullable_to_non_nullable
                  as String,
        counterStatus: null == counterStatus
            ? _value.counterStatus
            : counterStatus // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LiveQueueEntityImpl implements _LiveQueueEntity {
  _$LiveQueueEntityImpl({
    required this.tokenId,
    required this.currentStatus,
    required this.estimatedWaitTime,
    required this.currentPosition,
    required this.peopleAhead,
    required this.counterStatus,
  });

  @override
  final String tokenId;
  @override
  final String currentStatus;
  @override
  final String estimatedWaitTime;
  @override
  final String currentPosition;
  @override
  final String peopleAhead;
  @override
  final String counterStatus;

  @override
  String toString() {
    return 'LiveQueueEntity(tokenId: $tokenId, currentStatus: $currentStatus, estimatedWaitTime: $estimatedWaitTime, currentPosition: $currentPosition, peopleAhead: $peopleAhead, counterStatus: $counterStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveQueueEntityImpl &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.currentStatus, currentStatus) ||
                other.currentStatus == currentStatus) &&
            (identical(other.estimatedWaitTime, estimatedWaitTime) ||
                other.estimatedWaitTime == estimatedWaitTime) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.peopleAhead, peopleAhead) ||
                other.peopleAhead == peopleAhead) &&
            (identical(other.counterStatus, counterStatus) ||
                other.counterStatus == counterStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tokenId,
    currentStatus,
    estimatedWaitTime,
    currentPosition,
    peopleAhead,
    counterStatus,
  );

  /// Create a copy of LiveQueueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveQueueEntityImplCopyWith<_$LiveQueueEntityImpl> get copyWith =>
      __$$LiveQueueEntityImplCopyWithImpl<_$LiveQueueEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _LiveQueueEntity implements LiveQueueEntity {
  factory _LiveQueueEntity({
    required final String tokenId,
    required final String currentStatus,
    required final String estimatedWaitTime,
    required final String currentPosition,
    required final String peopleAhead,
    required final String counterStatus,
  }) = _$LiveQueueEntityImpl;

  @override
  String get tokenId;
  @override
  String get currentStatus;
  @override
  String get estimatedWaitTime;
  @override
  String get currentPosition;
  @override
  String get peopleAhead;
  @override
  String get counterStatus;

  /// Create a copy of LiveQueueEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveQueueEntityImplCopyWith<_$LiveQueueEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
