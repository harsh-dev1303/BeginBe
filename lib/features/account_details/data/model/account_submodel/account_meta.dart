

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_meta.freezed.dart';
part 'account_meta.g.dart';

@freezed
class AccountMeta with _$AccountMeta{
  
  factory AccountMeta({
    @JsonKey(name: "powered_by") required String poweredBy,
    @JsonKey(name: "upgrade_url") required String upgradeUrl,
    @JsonKey(name: "docs_url") required String docsUrl,
    @JsonKey(name: "template_gallery") required String templateGallery,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "features") required List<String> features,
    @JsonKey(name: "upgrade_cta") required String upgradeCta,

  }) = _AccountMeta ;

  factory AccountMeta.fromJson(Map<String,dynamic> json) => _$AccountMetaFromJson(json);

}