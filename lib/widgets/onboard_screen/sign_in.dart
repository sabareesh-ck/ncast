import 'package:flutter/material.dart';
import 'package:ncast/screen/home_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  final String screen = 'onboard';
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const HomeScreen()));
      },
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
