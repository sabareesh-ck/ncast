import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        color: const Color(0xFF1F1F1F).withOpacity(0.6),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
    );
  }
}
