

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';

part 'third_day_tokenId_notifier.g.dart';

@riverpod
class ThirdDayTokenIdNotifier extends _$ThirdDayTokenIdNotifier {

  List<StoredTokenModel?> build(){
   return GlobalCache.getInstance.getThirdDayActiveTokenId();
  }

  Future<void> addStoredTokenModel(StoredTokenModel tokenInfo) async {
     if(!state.contains(tokenInfo)){                          //here state = List<StoredTokenModel?>
        final updated = [...state,tokenInfo];
        state = updated;
        await GlobalCache.getInstance.setThirdDayActiveTokenId(tokensIds:updated);
     }
  }



}