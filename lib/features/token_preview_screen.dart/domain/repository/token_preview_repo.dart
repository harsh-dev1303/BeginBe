import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/entity/token_preview_entity.dart';

abstract class TokenPreviewRepo {
  ResultEither<TokenPreviewEntity> getTokenPreview(String counterId);
}