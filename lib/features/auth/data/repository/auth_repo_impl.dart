import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/auth/data/datasource/auth_datasource.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/login_success_entity.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/signup_success_entity.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/repository/auth_repository.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthDatasource authDatasource;

  AuthRepoImpl(this.authDatasource);
 
  @override
  ResultEither<LoginSuccessEntity> login({
    required String email, 
    required String password}) async {
      try{
        final loginModel =  await authDatasource.login(email: email, password: password);
        return Either.right(loginModel.toDomain());

      }on ServiceFailure catch(e){
        return Either.left(ServiceFailure(e.toString()));

      }
  }

  @override
  ResultEither<SignupSuccessEntity> singUp({
    required String email, 
    required String password}) async {
      try{
        print("signup in repoIml called");
         final signUpRes = await authDatasource.signUp(email: email, password: password);
         print("signupResponse toDomain:${signUpRes.toDomain()}");
         return Either.right(signUpRes.toDomain());
      }on ServiceFailure catch(e){
        print("signup failure:${e.message.toString()}");
        return Either.left(ServiceFailure(e.toString()));
      }
  }

}