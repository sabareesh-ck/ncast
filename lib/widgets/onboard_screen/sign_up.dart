import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 80),
        child: Text(
          'Sign up',
          style:
              TextStyle(color: Color(0xFF4C0099), fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
