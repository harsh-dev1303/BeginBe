import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
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
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
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
      appBar: AppBar(title:const Text("Sign Up")),
      body: Padding(
        padding : const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "email"
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
            const SizedBox(height: 24),
            authNotifier.maybeWhen(
              loading:()=> CircularProgressIndicator(),
              orElse: ()=>ElevatedButton(
                onPressed: (){
                  ref.read(authNotifierProvider.notifier).signUp(email: emailController.text.trim(), password: passwordController.text.trim());
                }, 
                child: Text("Sign Up")
                )
              )


          ],
        ),
      )
      

    );
  }
}