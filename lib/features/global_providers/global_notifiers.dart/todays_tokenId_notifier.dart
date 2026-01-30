
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';

part 'todays_tokenId_notifier.g.dart';

@riverpod
class TodaysTokenIdNotifier extends _$TodaysTokenIdNotifier{

  List<StoredTokenModel?> build(){
   return GlobalCache.getInstance.getTodayActiveTokenId();
  }

  Future<void> addStoredTokenModel(StoredTokenModel tokenInfo) async {
     if(!state.contains(tokenInfo)){                          //here state = List<StoredTokenModel?>
        final updated = [...state,tokenInfo];
        state = updated;
        await GlobalCache.getInstance.setTodayActiveTokenId(tokensIds: updated);
     }
  }

}