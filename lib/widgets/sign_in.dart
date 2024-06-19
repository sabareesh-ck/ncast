import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color(0xFF4C0099))),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 80),
        child: Text(
          'Sign in',
          style:
              TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
