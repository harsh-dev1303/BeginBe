import 'package:hive/hive.dart';
import 'package:secure_fintech_bankingapp/core/cache/adapter/auth_token_adapter.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';

// class GlobalCache{
//   static late final  GlobalCache _instance;
//   final Box<dynamic> _box;              //since box will goiing to store different data types

//   GlobalCache._(this._box);

//   static const String _boxName = "GlobalCacheBox";
//   static const String _athKey = "token";

//   static Future<void> init() async {
//     Hive.registerAdapter(AuthTokenAdapter());
//     final box = await Hive.openBox<dynamic>(_boxName);
//     _instance = GlobalCache._(box);
//   }

//   static GlobalCache get getInstance => _instance;

//   Future<void> _setValue<T>(dynamic key ,T value) => _box.put(key, value);

//   T _getValue<T>(dynamic key , {T? defaultValue}) => _box.get(key,defaultValue: defaultValue) as T;    //it will first find value of key in box if no value exists than default one will be returned


//   //auth
//   Future<void> setToken({required AuthToken? authToken}) => _setValue(_athKey, authToken);
//   AuthToken? getToken() => _getValue(_athKey,defaultValue: null);


// }