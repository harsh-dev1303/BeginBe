
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token.freezed.dart';

@freezed
class AuthToken with _$AuthToken{

  factory AuthToken({
    required String atkn,
    String? refreshToken
  }) = _AuthToken ;

  AuthToken._();

  bool get isAccessTokenExpired => isTokenExpired(atkn);

  bool isTokenExpired(String? token){
    if(token == null){
       return true;
    }

    try{
      final payLoad = (JWT.decode(token).payload) as Map<String,dynamic>;
      final exp = payLoad["exp"] as int;
      final now = DateTime.now().microsecondsSinceEpoch ~/ 1000;
      return exp < now;

    }catch(e){
      return true;
    }
  }

}