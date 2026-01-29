import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/entity/token_confirmation_entity.dart';

abstract class TokenConfirmationRepo {
  ResultEither<TokenConfirmationEntity> getTokenConfirmation(String categoryId,String date);
}