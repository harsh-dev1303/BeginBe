import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/core/widget/auth_button.dart';
import 'package:secure_fintech_bankingapp/core/widget/auth_field.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  // final loginRoute = Rout
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    // ref.listen(authNotifierProvider, (prev, next) {
    //   next.whenOrNull(
    //     authenticated: () async {
    //        final token = await SecureTokenManager.getAccessToken();
    //       print("authenticated login ran:$token");
    //       if(token != null){
    //         print("token in login successfull:$token");
    //        context.router.replaceAll([const AppShellRoute()]);
    //       }

    //     },

    //     error: (mssg) {
    //       print("login page snackbar for error:${mssg.toString()}");
    //       ScaffoldMessenger.of(
    //         context,
    //       ).showSnackBar(SnackBar(content: Text(mssg)));
    //     },
    //   );
    // });
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                AuthField(
                  controller: emailController,
                  hintText: "Email",
                 
                ),
                SizedBox(height: 15),
                AuthField(
                  controller: passwordController,
                  hintText: "Password",
                  isPassword: true,
                ),
                SizedBox(height: 20),
                const SizedBox(height: 24),
                authState.maybeWhen(
                  loading: () => CircularProgressIndicator(),
                  orElse: () => AuthButton(
                    onPressed: () {
                      ref
                          .read(authNotifierProvider.notifier)
                          .login(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    },
                    btnText: "Login",
                  ),
                  /* ElevatedButton(
                    onPressed: () {
                      ref
                          .read(authNotifierProvider.notifier)
                          .login(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    },
                    child: Text("Login"),
                  )*/
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const SignupRoute());
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: " sign up",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
