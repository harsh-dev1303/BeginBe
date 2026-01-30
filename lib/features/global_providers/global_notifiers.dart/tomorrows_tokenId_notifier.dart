

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';

part 'tomorrows_tokenId_notifier.g.dart';

@riverpod
class TomorrowsTokenIdNotifier extends _$TomorrowsTokenIdNotifier{

  List<StoredTokenModel?> build(){
    return GlobalCache.getInstance.getTomorrowActiveTokenId();
  }

  Future<void> addStoredTokenModel(StoredTokenModel tokenInfo) async {
    if(!state.contains(tokenInfo)){
      final updated = [...state,tokenInfo];
      state = updated;
      await GlobalCache.getInstance.setTomorrowActiveTokenId(tokensIds: updated);
    }

  }

}