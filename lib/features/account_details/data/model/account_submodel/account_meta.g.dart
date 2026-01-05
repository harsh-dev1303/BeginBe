// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountMetaImpl _$$AccountMetaImplFromJson(Map<String, dynamic> json) =>
    _$AccountMetaImpl(
      poweredBy: json['powered_by'] as String,
      upgradeUrl: json['upgrade_url'] as String,
      docsUrl: json['docs_url'] as String,
      templateGallery: json['template_gallery'] as String,
      message: json['message'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      upgradeCta: json['upgrade_cta'] as String,
    );

Map<String, dynamic> _$$AccountMetaImplToJson(_$AccountMetaImpl instance) =>
    <String, dynamic>{
      'powered_by': instance.poweredBy,
      'upgrade_url': instance.upgradeUrl,
      'docs_url': instance.docsUrl,
      'template_gallery': instance.templateGallery,
      'message': instance.message,
      'features': instance.features,
      'upgrade_cta': instance.upgradeCta,
    };
