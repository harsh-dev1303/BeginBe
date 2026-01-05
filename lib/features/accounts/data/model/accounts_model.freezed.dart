// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountsModel _$AccountsModelFromJson(Map<String, dynamic> json) {
  return _AccountsModel.fromJson(json);
}

/// @nodoc
mixin _$AccountsModel {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perpage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<AccountDataModel> get accountList => throw _privateConstructorUsedError;
  @JsonKey(name: "support")
  AccountSupportModel get support => throw _privateConstructorUsedError;
  @JsonKey(name: "_meta")
  AccountMetaModel get meta => throw _privateConstructorUsedError;

  /// Serializes this AccountsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountsModelCopyWith<AccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsModelCopyWith<$Res> {
  factory $AccountsModelCopyWith(
    AccountsModel value,
    $Res Function(AccountsModel) then,
  ) = _$AccountsModelCopyWithImpl<$Res, AccountsModel>;
  @useResult
  $Res call({
    int page,
    @JsonKey(name: "per_page") int perpage,
    int total,
    @JsonKey(name: "total_pages") int totalPages,
    @JsonKey(name: "data") List<AccountDataModel> accountList,
    @JsonKey(name: "support") AccountSupportModel support,
    @JsonKey(name: "_meta") AccountMetaModel meta,
  });

  $AccountSupportModelCopyWith<$Res> get support;
  $AccountMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$AccountsModelCopyWithImpl<$Res, $Val extends AccountsModel>
    implements $AccountsModelCopyWith<$Res> {
  _$AccountsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perpage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? accountList = null,
    Object? support = null,
    Object? meta = null,
  }) {
    return _then(
      _value.copyWith(
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            perpage: null == perpage
                ? _value.perpage
                : perpage // ignore: cast_nullable_to_non_nullable
                      as int,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
            accountList: null == accountList
                ? _value.accountList
                : accountList // ignore: cast_nullable_to_non_nullable
                      as List<AccountDataModel>,
            support: null == support
                ? _value.support
                : support // ignore: cast_nullable_to_non_nullable
                      as AccountSupportModel,
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as AccountMetaModel,
          )
          as $Val,
    );
  }

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountSupportModelCopyWith<$Res> get support {
    return $AccountSupportModelCopyWith<$Res>(_value.support, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountMetaModelCopyWith<$Res> get meta {
    return $AccountMetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountsModelImplCopyWith<$Res>
    implements $AccountsModelCopyWith<$Res> {
  factory _$$AccountsModelImplCopyWith(
    _$AccountsModelImpl value,
    $Res Function(_$AccountsModelImpl) then,
  ) = __$$AccountsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int page,
    @JsonKey(name: "per_page") int perpage,
    int total,
    @JsonKey(name: "total_pages") int totalPages,
    @JsonKey(name: "data") List<AccountDataModel> accountList,
    @JsonKey(name: "support") AccountSupportModel support,
    @JsonKey(name: "_meta") AccountMetaModel meta,
  });

  @override
  $AccountSupportModelCopyWith<$Res> get support;
  @override
  $AccountMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$AccountsModelImplCopyWithImpl<$Res>
    extends _$AccountsModelCopyWithImpl<$Res, _$AccountsModelImpl>
    implements _$$AccountsModelImplCopyWith<$Res> {
  __$$AccountsModelImplCopyWithImpl(
    _$AccountsModelImpl _value,
    $Res Function(_$AccountsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perpage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? accountList = null,
    Object? support = null,
    Object? meta = null,
  }) {
    return _then(
      _$AccountsModelImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        perpage: null == perpage
            ? _value.perpage
            : perpage // ignore: cast_nullable_to_non_nullable
                  as int,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
        accountList: null == accountList
            ? _value._accountList
            : accountList // ignore: cast_nullable_to_non_nullable
                  as List<AccountDataModel>,
        support: null == support
            ? _value.support
            : support // ignore: cast_nullable_to_non_nullable
                  as AccountSupportModel,
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as AccountMetaModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountsModelImpl extends _AccountsModel {
  _$AccountsModelImpl({
    required this.page,
    @JsonKey(name: "per_page") required this.perpage,
    required this.total,
    @JsonKey(name: "total_pages") required this.totalPages,
    @JsonKey(name: "data") required final List<AccountDataModel> accountList,
    @JsonKey(name: "support") required this.support,
    @JsonKey(name: "_meta") required this.meta,
  }) : _accountList = accountList,
       super._();

  factory _$AccountsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountsModelImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: "per_page")
  final int perpage;
  @override
  final int total;
  @override
  @JsonKey(name: "total_pages")
  final int totalPages;
  final List<AccountDataModel> _accountList;
  @override
  @JsonKey(name: "data")
  List<AccountDataModel> get accountList {
    if (_accountList is EqualUnmodifiableListView) return _accountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountList);
  }

  @override
  @JsonKey(name: "support")
  final AccountSupportModel support;
  @override
  @JsonKey(name: "_meta")
  final AccountMetaModel meta;

  @override
  String toString() {
    return 'AccountsModel(page: $page, perpage: $perpage, total: $total, totalPages: $totalPages, accountList: $accountList, support: $support, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perpage, perpage) || other.perpage == perpage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(
              other._accountList,
              _accountList,
            ) &&
            (identical(other.support, support) || other.support == support) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    perpage,
    total,
    totalPages,
    const DeepCollectionEquality().hash(_accountList),
    support,
    meta,
  );

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsModelImplCopyWith<_$AccountsModelImpl> get copyWith =>
      __$$AccountsModelImplCopyWithImpl<_$AccountsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountsModelImplToJson(this);
  }
}

abstract class _AccountsModel extends AccountsModel {
  factory _AccountsModel({
    required final int page,
    @JsonKey(name: "per_page") required final int perpage,
    required final int total,
    @JsonKey(name: "total_pages") required final int totalPages,
    @JsonKey(name: "data") required final List<AccountDataModel> accountList,
    @JsonKey(name: "support") required final AccountSupportModel support,
    @JsonKey(name: "_meta") required final AccountMetaModel meta,
  }) = _$AccountsModelImpl;
  _AccountsModel._() : super._();

  factory _AccountsModel.fromJson(Map<String, dynamic> json) =
      _$AccountsModelImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: "per_page")
  int get perpage;
  @override
  int get total;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(name: "data")
  List<AccountDataModel> get accountList;
  @override
  @JsonKey(name: "support")
  AccountSupportModel get support;
  @override
  @JsonKey(name: "_meta")
  AccountMetaModel get meta;

  /// Create a copy of AccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountsModelImplCopyWith<_$AccountsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
