import 'package:dio/src/response.dart';
import 'package:secure_fintech_bankingapp/network/domain/cookie_manager_interface.dart';

class CookieManager implements CookieManagerInterface {
  Map<String, String> _cookie = {};

  @override
  void updateCookie(Response response) {
    List<String>? setCookies = response.headers['set-cookie'];
    if (setCookies != null) {
      for (var setCookie in setCookies) {
        final cookies = setCookie.split(";");
        for (var cookie in cookies ){
           final trimmedCookie = cookie.trim();
           final cookieParts = trimmedCookie.split("=");

           for(var parts in cookieParts){
            if(parts.length>1 && parts[0].trim().toLowerCase() == 'jsessionid'){
                _setCookie(trimmedCookie);
            }

           }
        }
      }
    }
  }

  void _setCookie(String? rawCookie){
    if(rawCookie != null){
      final keyValue = rawCookie.split("=");
      if(keyValue.length == 2){
        final key = keyValue[0].trim();
        final value = keyValue[1].trim();

        if(key == 'path' || key == 'expires') return;
        _cookie[key] = value;
      }
    }


  }

  @override
  String generateCookieHeader() {
    var cookieHeader = "";

    for(var key in _cookie.keys){
      if(cookieHeader.isNotEmpty) cookieHeader += ";";
      cookieHeader += "$key=${_cookie[key]}";

    }
    return cookieHeader;
  }
}
