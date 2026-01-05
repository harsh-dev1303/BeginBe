// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountsModelImpl _$$AccountsModelImplFromJson(Map<String, dynamic> json) =>
    _$AccountsModelImpl(
      page: (json['page'] as num).toInt(),
      perpage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      accountList: (json['data'] as List<dynamic>)
          .map((e) => AccountDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      support: AccountSupportModel.fromJson(
        json['support'] as Map<String, dynamic>,
      ),
      meta: AccountMetaModel.fromJson(json['_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountsModelImplToJson(_$AccountsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perpage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.accountList,
      'support': instance.support,
      '_meta': instance.meta,
    };
