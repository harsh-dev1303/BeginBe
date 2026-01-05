
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_meta_model.freezed.dart';
part 'account_meta_model.g.dart';

@freezed
class AccountMetaModel with _$AccountMetaModel{

  factory AccountMetaModel({
    @JsonKey(name: "powered_by") required String poweredKey,
    @JsonKey(name: "upgrade_url") required String upgradeUrl,
    @JsonKey(name: "docs_url") required String docsUrl,
    @JsonKey(name: "template_gallery") required String templateGallery,
    @JsonKey(name: "message") required String mssg,
    @JsonKey(name: "features") required List<String> features,
    @JsonKey(name: "upgrade_cta") required String upgradeCta,

  }) = _AccountMetaModel;

  factory AccountMetaModel.fromJson(Map<String,dynamic> json) => _$AccountMetaModelFromJson(json);

}