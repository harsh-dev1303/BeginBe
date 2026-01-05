
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {

  factory AuthState.initial() = _Initial;            //factory named constructor 
  factory AuthState.loading() = _Loading;
  factory AuthState.authenticated() = _Authenticated;
  factory AuthState.unauthenticated() = _Unauthenticated;
  factory AuthState.signupSuccess() = _SignupSuccess;
  factory AuthState.error(String mssg) = _Error; 
}