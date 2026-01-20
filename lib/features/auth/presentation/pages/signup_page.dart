import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/core/widget/auth_button.dart';
import 'package:secure_fintech_bankingapp/core/widget/auth_field.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/state/auth_state.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/pages/login_page.dart';

@RoutePage()
class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(authNotifierProvider);
    // ref.listen(authNotifierProvider, (previous,next){             //prev, next <= both are states, .listen not build ui just perform actions
    //   next.whenOrNull(
    //     authenticated: (){
    //       context.router.replace(const LoginRoute());
    //     },
    //     error: (mssg){
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(content: Text(mssg))
    //       );
    //     }
    //   );

    // });
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
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
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                AuthField(
                  controller: nameController,
                  hintText: "Name",
                ),
                SizedBox(height: 15),
                AuthField(
                  controller: emailController,
                  hintText: "Email"
                ),
                SizedBox(height: 15),
                AuthField(
                  controller: passwordController,
                  hintText: "Password",
                  isPassword: true,
                ),
                const SizedBox(height: 15),
                authNotifier.maybeWhen(
                  loading: () => CircularProgressIndicator(),
                  orElse: () => AuthButton(
                    onPressed: (){
                      ref
                          .read(authNotifierProvider.notifier)
                          .signUp(
                            name: nameController.text.trim(),
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    }, 
                    btnText: "Sign up"
                    )
                  /*ElevatedButton(
                    onPressed: () {
                      ref
                          .read(authNotifierProvider.notifier)
                          .signUp(
                            name: nameController.text.trim(),
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    },
                    child: Text("Sign Up"),
                  )*/,
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const LoginRoute());
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account?",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: " sign in",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
