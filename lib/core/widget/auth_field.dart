import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  bool isPassword;

  AuthField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  late bool _isObsecure;

  @override
  void initState() {
    super.initState();
    _isObsecure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${widget.hintText} is required';
        }
        return null;
      },
      decoration: InputDecoration(
        hint: Text(widget.hintText),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _isObsecure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isObsecure = !_isObsecure;
                  });
                },
              )
            : null,
      ),

      obscureText: _isObsecure,

      // obscureText: ,
    );
  }
}
