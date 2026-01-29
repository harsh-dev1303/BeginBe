// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_confirmation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TokenConfirmationEntity {
  String get tokenNumber =>
      throw _privateConstructorUsedError; //treat this as "tokenId" not "tokenNumber"
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;
  String get estimatedWaitTime => throw _privateConstructorUsedError;
  String get peopleAhead => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Create a copy of TokenConfirmationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenConfirmationEntityCopyWith<TokenConfirmationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenConfirmationEntityCopyWith<$Res> {
  factory $TokenConfirmationEntityCopyWith(
    TokenConfirmationEntity value,
    $Res Function(TokenConfirmationEntity) then,
  ) = _$TokenConfirmationEntityCopyWithImpl<$Res, TokenConfirmationEntity>;
  @useResult
  $Res call({
    String tokenNumber,
    String categoryId,
    String categoryName,
    String branchName,
    String estimatedWaitTime,
    String peopleAhead,
    String date,
  });
}

/// @nodoc
class _$TokenConfirmationEntityCopyWithImpl<
  $Res,
  $Val extends TokenConfirmationEntity
>
    implements $TokenConfirmationEntityCopyWith<$Res> {
  _$TokenConfirmationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenConfirmationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenNumber = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? branchName = null,
    Object? estimatedWaitTime = null,
    Object? peopleAhead = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            tokenNumber: null == tokenNumber
                ? _value.tokenNumber
                : tokenNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryName: null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String,
            branchName: null == branchName
                ? _value.branchName
                : branchName // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedWaitTime: null == estimatedWaitTime
                ? _value.estimatedWaitTime
                : estimatedWaitTime // ignore: cast_nullable_to_non_nullable
                      as String,
            peopleAhead: null == peopleAhead
                ? _value.peopleAhead
                : peopleAhead // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TokenConfirmationEntityImplCopyWith<$Res>
    implements $TokenConfirmationEntityCopyWith<$Res> {
  factory _$$TokenConfirmationEntityImplCopyWith(
    _$TokenConfirmationEntityImpl value,
    $Res Function(_$TokenConfirmationEntityImpl) then,
  ) = __$$TokenConfirmationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String tokenNumber,
    String categoryId,
    String categoryName,
    String branchName,
    String estimatedWaitTime,
    String peopleAhead,
    String date,
  });
}

/// @nodoc
class __$$TokenConfirmationEntityImplCopyWithImpl<$Res>
    extends
        _$TokenConfirmationEntityCopyWithImpl<
          $Res,
          _$TokenConfirmationEntityImpl
        >
    implements _$$TokenConfirmationEntityImplCopyWith<$Res> {
  __$$TokenConfirmationEntityImplCopyWithImpl(
    _$TokenConfirmationEntityImpl _value,
    $Res Function(_$TokenConfirmationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TokenConfirmationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenNumber = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? branchName = null,
    Object? estimatedWaitTime = null,
    Object? peopleAhead = null,
    Object? date = null,
  }) {
    return _then(
      _$TokenConfirmationEntityImpl(
        tokenNumber: null == tokenNumber
            ? _value.tokenNumber
            : tokenNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryName: null == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String,
        branchName: null == branchName
            ? _value.branchName
            : branchName // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedWaitTime: null == estimatedWaitTime
            ? _value.estimatedWaitTime
            : estimatedWaitTime // ignore: cast_nullable_to_non_nullable
                  as String,
        peopleAhead: null == peopleAhead
            ? _value.peopleAhead
            : peopleAhead // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TokenConfirmationEntityImpl implements _TokenConfirmationEntity {
  _$TokenConfirmationEntityImpl({
    required this.tokenNumber,
    required this.categoryId,
    required this.categoryName,
    required this.branchName,
    required this.estimatedWaitTime,
    required this.peopleAhead,
    required this.date,
  });

  @override
  final String tokenNumber;
  //treat this as "tokenId" not "tokenNumber"
  @override
  final String categoryId;
  @override
  final String categoryName;
  @override
  final String branchName;
  @override
  final String estimatedWaitTime;
  @override
  final String peopleAhead;
  @override
  final String date;

  @override
  String toString() {
    return 'TokenConfirmationEntity(tokenNumber: $tokenNumber, categoryId: $categoryId, categoryName: $categoryName, branchName: $branchName, estimatedWaitTime: $estimatedWaitTime, peopleAhead: $peopleAhead, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenConfirmationEntityImpl &&
            (identical(other.tokenNumber, tokenNumber) ||
                other.tokenNumber == tokenNumber) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.estimatedWaitTime, estimatedWaitTime) ||
                other.estimatedWaitTime == estimatedWaitTime) &&
            (identical(other.peopleAhead, peopleAhead) ||
                other.peopleAhead == peopleAhead) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tokenNumber,
    categoryId,
    categoryName,
    branchName,
    estimatedWaitTime,
    peopleAhead,
    date,
  );

  /// Create a copy of TokenConfirmationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenConfirmationEntityImplCopyWith<_$TokenConfirmationEntityImpl>
  get copyWith =>
      __$$TokenConfirmationEntityImplCopyWithImpl<
        _$TokenConfirmationEntityImpl
      >(this, _$identity);
}

abstract class _TokenConfirmationEntity implements TokenConfirmationEntity {
  factory _TokenConfirmationEntity({
    required final String tokenNumber,
    required final String categoryId,
    required final String categoryName,
    required final String branchName,
    required final String estimatedWaitTime,
    required final String peopleAhead,
    required final String date,
  }) = _$TokenConfirmationEntityImpl;

  @override
  String get tokenNumber; //treat this as "tokenId" not "tokenNumber"
  @override
  String get categoryId;
  @override
  String get categoryName;
  @override
  String get branchName;
  @override
  String get estimatedWaitTime;
  @override
  String get peopleAhead;
  @override
  String get date;

  /// Create a copy of TokenConfirmationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenConfirmationEntityImplCopyWith<_$TokenConfirmationEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
