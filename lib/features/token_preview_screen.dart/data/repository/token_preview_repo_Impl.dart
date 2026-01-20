import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/data/datasource/token_preview_datasource.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/entity/token_preview_entity.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/repository/token_preview_repo.dart';

class TokenPreviewRepoImpl implements TokenPreviewRepo{

  final TokenPreviewDatasource tokenPreviewDatasource;
  
  TokenPreviewRepoImpl(this.tokenPreviewDatasource);

  @override
  ResultEither<TokenPreviewEntity> getTokenPreview(String counterId) async {
    try{
      final tokenPreviewModel = await tokenPreviewDatasource.fetchTokenPreview(counterId);
      return Either.right(tokenPreviewModel.toDomain());

    }on ServiceFailure catch(e){
      return Either.left(ServiceFailure(e.message.toString()));
    } 
  }

}