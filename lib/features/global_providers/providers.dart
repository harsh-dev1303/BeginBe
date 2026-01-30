import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_active_tokenId_manager.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';
import 'package:secure_fintech_bankingapp/network/data/network_client.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';
import 'package:secure_fintech_bankingapp/network/state/network_error.dart';


final networkLoadingProvider = StateProvider<bool>((_){
  return false;
});

final networkClientProvider = FutureProvider<NetworkClientInterface>((ref) async {
  final client = NetworkClient(ref);
  await client.initialize();
  return client;
});


final authTokenProvider = FutureProvider<String?>((_) async {
  //  final authToken = GlobalCache.getInstance.getToken();
   final authToken = await SecureTokenManager.getAccessToken();
   return authToken;
});

final networkErrorProvider = StateProvider<NetworkErrorType?>((ref){
  return null;
});

// final todaysActivetokenIdProvider = Provider.autoDispose<List<StoredTokenModel?>>((ref){       //<String? return type, String param type>
//    final activeTokenIdList =  GlobalCache.getInstance.getTodayActiveTokenId();                                               //await SecureActiveTokenIdManager.readTokenId();
//    print("activeTokenId in activetokenIdProvider:$activeTokenIdList");
//    return activeTokenIdList;
// });

// final tomorrowsActiveTokenIdProvider = Provider.autoDispose<List<StoredTokenModel?>>((ref){
//   final activeTokenIdList = GlobalCache.getInstance.getTomorrowActiveTokenId();
//   print("activeTokenId in tomorrows activetokenIdProvider:$activeTokenIdList");
//   return activeTokenIdList;
// });

// final thirdDaysActiveTokenIdProvider = Provider.autoDispose<List<StoredTokenModel?>>((ref){
//   final activeTokenIdList = GlobalCache.getInstance.getThirdDayActiveTokenId();
//    print("activeTokenId in thirdDays activetokenIdProvider:$activeTokenIdList");
//   return activeTokenIdList;

// });

// final confirmedTokenIdProvider = StateProvider<String?>((ref){     //state is changed in token_confirmation_page 
//    return null;
// });

// final liveTokenDateProvider = StateProvider<String?>((ref){   //state is changed in token_confirmation_page's "Go to Live button"
//   return null;
// });
