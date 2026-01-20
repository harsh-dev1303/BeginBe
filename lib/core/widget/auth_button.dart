import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';

class AuthButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.onPressed,
    required this.btnText
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          fixedSize: Size(400, 50),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor
        ),
        child: Text(btnText),
        ),

    );
  }
}