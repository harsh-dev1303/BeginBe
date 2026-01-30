import 'package:hive/hive.dart';
import 'package:secure_fintech_bankingapp/core/cache/adapter/stored_token_model.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';

class GlobalCache {
  static late final GlobalCache _instance;
  final Box<dynamic> _box; //since box will goiing to store different data types

  GlobalCache._(this._box);

  static const String _boxName = "GlobalCacheBox";
  static const String _athKey = "token";
  static const String _todaysToken = "todayTokenIds";
  static const String _tomorrowToken = "tomorrowTokenIds";
  static const String _thirdDayToken = "thirdDayTokenIds";

  static Future<void> init() async {
    Hive.registerAdapter(StoredTokenModelAdapter());
    final box = await Hive.openBox<dynamic>(_boxName);
    _instance = GlobalCache._(box);
  }

  static GlobalCache get getInstance => _instance;

  Future<void> _setValue<T>(dynamic key, T value) => _box.put(key, value);

  T _getValue<T>(dynamic key, {T? defaultValue}) =>
      _box.get(key, defaultValue: defaultValue)
          as T; //it will first find value of key in box if no value exists than default one will be returned

  // //auth
  // Future<void> setToken({required AuthToken? authToken}) => _setValue(_athKey, authToken);
  // AuthToken? getToken() => _getValue(_athKey,defaultValue: null);

  Future<void> setTodayActiveTokenId({
    required List<StoredTokenModel?> tokensIds,
  }) => _setValue(_todaysToken, tokensIds);
  List<StoredTokenModel?> getTodayActiveTokenId() =>
      _getValue(_todaysToken, defaultValue: <StoredTokenModel?>[]);

  Future<void> setTomorrowActiveTokenId({
    required List<StoredTokenModel?> tokensIds,
  }) => _setValue(_tomorrowToken, tokensIds);
  List<StoredTokenModel?> getTomorrowActiveTokenId() =>
      _getValue(_tomorrowToken, defaultValue: <StoredTokenModel?>[]);

  Future<void> setThirdDayActiveTokenId({
    required List<StoredTokenModel?> tokensIds,
  }) => _setValue(_thirdDayToken, tokensIds);
  List<StoredTokenModel?> getThirdDayActiveTokenId() =>
      _getValue(_thirdDayToken, defaultValue: <StoredTokenModel?>[]);

  Future<void> clearTodayActiveToken() async {
    await _box.delete(_todaysToken);
    await _box.delete(_tomorrowToken);
    await _box.delete(_thirdDayToken);
  }
}
