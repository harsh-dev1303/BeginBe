

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/data/repository/token_preview_repo_Impl.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/domain/entity/token_preview_entity.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/domain/locator/token_preview_locator.dart';

part 'token_preview_notifier.g.dart';

@riverpod
class TokenPreviewNotifier extends _$TokenPreviewNotifier{

  Future<TokenPreviewEntity> build(String categoryId) async {
    return await _fetchTokenPreview(categoryId);

  }

  Future<TokenPreviewEntity> _fetchTokenPreview(String categoryId) async {
    final tokenPreviewRepo = await ref.watch(tokenPreviewRepoLocatorProvider.future);
    final tokenPreviewEntity = await tokenPreviewRepo.getTokenPreview(categoryId);
    return tokenPreviewEntity.fold(
      (failure){
        throw Exception(failure.message.toString());
      },
      (success){
        print("success in notifier:${success}");
        return success;
      }
      );
    
  }

  Future<void> retryTokenPreview() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(()=>_fetchTokenPreview(categoryId));

  }

}