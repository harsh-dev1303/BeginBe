import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/login_entity/login_success_entity.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/signup_entity/signup_success_entity.dart';

abstract class AuthRepository {
  ResultEither<SignupSuccessEntity> singUp({
    required String name,
    required String email,
    required String password
  }
  );

  ResultEither<LoginSuccessEntity> login({
    required String email,
    required String password
  });
}