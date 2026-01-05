import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
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