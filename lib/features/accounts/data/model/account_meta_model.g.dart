// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountMetaModelImpl _$$AccountMetaModelImplFromJson(
  Map<String, dynamic> json,
) => _$AccountMetaModelImpl(
  poweredKey: json['powered_by'] as String,
  upgradeUrl: json['upgrade_url'] as String,
  docsUrl: json['docs_url'] as String,
  templateGallery: json['template_gallery'] as String,
  mssg: json['message'] as String,
  features: (json['features'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  upgradeCta: json['upgrade_cta'] as String,
);

Map<String, dynamic> _$$AccountMetaModelImplToJson(
  _$AccountMetaModelImpl instance,
) => <String, dynamic>{
  'powered_by': instance.poweredKey,
  'upgrade_url': instance.upgradeUrl,
  'docs_url': instance.docsUrl,
  'template_gallery': instance.templateGallery,
  'message': instance.mssg,
  'features': instance.features,
  'upgrade_cta': instance.upgradeCta,
};
