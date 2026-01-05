import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
import 'package:secure_fintech_bankingapp/core/url/base_url.dart';
import 'package:secure_fintech_bankingapp/features/auth/data/models/login_model.dart';
import 'package:secure_fintech_bankingapp/features/auth/data/models/signup_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class AuthDatasource {
  Future<SignupModel> signUp({required String email, required String password});
  Future<LoginModel> login({required String email, required String password});
}

class AuthDatasourceImpl implements AuthDatasource {
  final NetworkClientInterface networkClient;

  AuthDatasourceImpl(this.networkClient);
  @override
  Future<SignupModel> signUp({
    required String email,
    required String password,
  }) async {
    try {
      print("signup in datasource called");
      print("networkclient in datasource:$networkClient");
      final dio = networkClient.customDio(authorizatioRequired: false);

      print("dio object:${dio}");

      final reqBody = {"email": email, "password": password};

      final response = await dio.post("/register", data: reqBody);
      print("signup response in datasource:$response");

      //response consists Dio's dynamic data type object for ex:
      //       Response(
      //   data: {
      //     "status": {
      //       "code": "000000",
      //       "description": "Signup successful"
      //     },
      //     "data": {
      //       "id": 5,
      //       "email": "user@example.com",
      //       "token": "abc123"
      //     }
      //   },
      //   statusCode: 200,
      //   statusMessage: "OK",
      //   headers: {
      //     content-type: "application/json",
      //     date: "Mon, 16 Dec 2025 10:20:00 GMT"
      //   },
      //   requestOptions: RequestOptions(
      //     path: "/register",
      //     method: "POST",
      //     headers: {...},
      //     data: {
      //       "email": "user@example.com",
      //       "password": "123456"
      //     }
      //   ),
      //   redirects: [],
      //   extra: {}
      // )

      final signupResponseJson = response.data;
      print("signupResponseJson:$signupResponseJson");
      final token = signupResponseJson['token'] as String;

      // await GlobalCache.getInstance.setToken(authToken: AuthToken(atkn: token));
      await SecureTokenManager.saveToken(authToken: AuthToken(atkn: token));
      print(
        "token saved(datasource signup):${SecureTokenManager.getAccessToken()}",
      );

      return SignupModel.fromJson(signupResponseJson);
      // if (signupResponseJson['status']['code'] == '000000') {
      //   print("running");
      //   final responseJson = signupResponseJson['data'];
      //   final token = responseJson['token'] as String;
      //   await GlobalCache.getInstance.setToken(
      //     authToken: AuthToken(
      //       atkn: token,
      //     ),
      //   );
      //   final signupModel = SignupModel.fromJson(responseJson);
      //   return signupModel;
      // } else {
      //   throw ServiceFailure(
      //     signupResponseJson["status"]["description"] ?? "Server Error",
      //   );
      // }
    } on TypeError catch (e) {
      // JSON parsing / unexpected response structure
      print("SignUp Type Error - $e");
      throw ServiceFailure("Unable to Signup");
    } on DioException catch (e) {
      print("Status code: ${e.response?.statusCode}");
      print("Response data: ${e.response?.data}");

      // BUSINESS / API error (ex: email already exists)
      if (e.response?.statusCode == 400) {
        throw ServiceFailure(e.response?.data?['error'] ?? "Unable to Signup");
      }

      // Everything else → let interceptor/global handle
      throw NetworkHandledException();
    } on Exception catch (e) {
      // Any unexpected runtime issue
      print("SignUp exception Error - $e");
      throw ServiceFailure("Unable to Signup");
    }
  }

  @override
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final dio = networkClient.customDio(authorizatioRequired: true);
      final reqBody = {"email": email, "password": password};
      final response = await dio.post("/login", data: reqBody);
      print("login Response:$response");

      final loginResJson = response.data;

      if (loginResJson['token'] == null) {
        print("login toekn null ran");
        throw ServiceFailure(loginResJson['error'] ?? 'Invalid credentials');
      }

      final token = loginResJson['token'];

      // await GlobalCache.getInstance.setToken(authToken: AuthToken(atkn: token));
      await SecureTokenManager.saveToken(authToken: AuthToken(atkn: token));
      return LoginModel.fromJson(loginResJson);
    } on TypeError catch (e) {
      // Parsing / null issues
      print("Login Type Error - $e");
      throw ServiceFailure("Unable to Login");
    } on DioException catch (e) {
      print("Login DioExecption Error - $e");
      print("Login DioExecption Error response  - ${e.response}");
      print("Login DioExecption Error response  - ${e.response?.data}");

      // BUSINESS ERROR (wrong email/password)
      if (e.response?.statusCode == 400) {
        throw ServiceFailure(
          e.response?.data?['error'] ?? 'Invalid credentials',
        );
      }
      throw NetworkHandledException();
      
    } on Exception catch (e) {
      // Unexpected app-side error
      print("Login exception Error - $e");
      throw ServiceFailure("Unable to Login");
    }
  }
}
