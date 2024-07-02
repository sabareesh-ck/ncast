import 'package:flutter/material.dart';
import 'package:ncast/l10n/app_localizations.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 80),
        child: Text(
          AppLocalizations.of(context)!.signUp,
          style: const TextStyle(
              color: Color(0xFF4C0099), fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
