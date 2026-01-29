// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_queue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LiveQueueModel _$LiveQueueModelFromJson(Map<String, dynamic> json) {
  return _LiveQueueModel.fromJson(json);
}

/// @nodoc
mixin _$LiveQueueModel {
  @JsonKey(name: "tokenId")
  String get tokenId => throw _privateConstructorUsedError;
  @JsonKey(name: "currentStatus")
  String get currentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "estimatedWaitTime")
  String get estimatedWaitTime => throw _privateConstructorUsedError;
  @JsonKey(name: "currentPosition")
  String get currentPosition => throw _privateConstructorUsedError;
  @JsonKey(name: "peopleAhead")
  String get peopleAhead => throw _privateConstructorUsedError;
  @JsonKey(name: "counterStatus")
  String get counterStatus => throw _privateConstructorUsedError;

  /// Serializes this LiveQueueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LiveQueueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveQueueModelCopyWith<LiveQueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveQueueModelCopyWith<$Res> {
  factory $LiveQueueModelCopyWith(
    LiveQueueModel value,
    $Res Function(LiveQueueModel) then,
  ) = _$LiveQueueModelCopyWithImpl<$Res, LiveQueueModel>;
  @useResult
  $Res call({
    @JsonKey(name: "tokenId") String tokenId,
    @JsonKey(name: "currentStatus") String currentStatus,
    @JsonKey(name: "estimatedWaitTime") String estimatedWaitTime,
    @JsonKey(name: "currentPosition") String currentPosition,
    @JsonKey(name: "peopleAhead") String peopleAhead,
    @JsonKey(name: "counterStatus") String counterStatus,
  });
}

/// @nodoc
class _$LiveQueueModelCopyWithImpl<$Res, $Val extends LiveQueueModel>
    implements $LiveQueueModelCopyWith<$Res> {
  _$LiveQueueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveQueueModel
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
abstract class _$$LiveQueueModelImplCopyWith<$Res>
    implements $LiveQueueModelCopyWith<$Res> {
  factory _$$LiveQueueModelImplCopyWith(
    _$LiveQueueModelImpl value,
    $Res Function(_$LiveQueueModelImpl) then,
  ) = __$$LiveQueueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "tokenId") String tokenId,
    @JsonKey(name: "currentStatus") String currentStatus,
    @JsonKey(name: "estimatedWaitTime") String estimatedWaitTime,
    @JsonKey(name: "currentPosition") String currentPosition,
    @JsonKey(name: "peopleAhead") String peopleAhead,
    @JsonKey(name: "counterStatus") String counterStatus,
  });
}

/// @nodoc
class __$$LiveQueueModelImplCopyWithImpl<$Res>
    extends _$LiveQueueModelCopyWithImpl<$Res, _$LiveQueueModelImpl>
    implements _$$LiveQueueModelImplCopyWith<$Res> {
  __$$LiveQueueModelImplCopyWithImpl(
    _$LiveQueueModelImpl _value,
    $Res Function(_$LiveQueueModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiveQueueModel
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
      _$LiveQueueModelImpl(
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
@JsonSerializable()
class _$LiveQueueModelImpl extends _LiveQueueModel {
  _$LiveQueueModelImpl({
    @JsonKey(name: "tokenId") required this.tokenId,
    @JsonKey(name: "currentStatus") required this.currentStatus,
    @JsonKey(name: "estimatedWaitTime") required this.estimatedWaitTime,
    @JsonKey(name: "currentPosition") required this.currentPosition,
    @JsonKey(name: "peopleAhead") required this.peopleAhead,
    @JsonKey(name: "counterStatus") required this.counterStatus,
  }) : super._();

  factory _$LiveQueueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveQueueModelImplFromJson(json);

  @override
  @JsonKey(name: "tokenId")
  final String tokenId;
  @override
  @JsonKey(name: "currentStatus")
  final String currentStatus;
  @override
  @JsonKey(name: "estimatedWaitTime")
  final String estimatedWaitTime;
  @override
  @JsonKey(name: "currentPosition")
  final String currentPosition;
  @override
  @JsonKey(name: "peopleAhead")
  final String peopleAhead;
  @override
  @JsonKey(name: "counterStatus")
  final String counterStatus;

  @override
  String toString() {
    return 'LiveQueueModel(tokenId: $tokenId, currentStatus: $currentStatus, estimatedWaitTime: $estimatedWaitTime, currentPosition: $currentPosition, peopleAhead: $peopleAhead, counterStatus: $counterStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveQueueModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of LiveQueueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveQueueModelImplCopyWith<_$LiveQueueModelImpl> get copyWith =>
      __$$LiveQueueModelImplCopyWithImpl<_$LiveQueueModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveQueueModelImplToJson(this);
  }
}

abstract class _LiveQueueModel extends LiveQueueModel {
  factory _LiveQueueModel({
    @JsonKey(name: "tokenId") required final String tokenId,
    @JsonKey(name: "currentStatus") required final String currentStatus,
    @JsonKey(name: "estimatedWaitTime") required final String estimatedWaitTime,
    @JsonKey(name: "currentPosition") required final String currentPosition,
    @JsonKey(name: "peopleAhead") required final String peopleAhead,
    @JsonKey(name: "counterStatus") required final String counterStatus,
  }) = _$LiveQueueModelImpl;
  _LiveQueueModel._() : super._();

  factory _LiveQueueModel.fromJson(Map<String, dynamic> json) =
      _$LiveQueueModelImpl.fromJson;

  @override
  @JsonKey(name: "tokenId")
  String get tokenId;
  @override
  @JsonKey(name: "currentStatus")
  String get currentStatus;
  @override
  @JsonKey(name: "estimatedWaitTime")
  String get estimatedWaitTime;
  @override
  @JsonKey(name: "currentPosition")
  String get currentPosition;
  @override
  @JsonKey(name: "peopleAhead")
  String get peopleAhead;
  @override
  @JsonKey(name: "counterStatus")
  String get counterStatus;

  /// Create a copy of LiveQueueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveQueueModelImplCopyWith<_$LiveQueueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
