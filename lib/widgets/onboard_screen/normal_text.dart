import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('More than 1000+ best talks ever',
        style: TextStyle(
            color: Color(0xFF5E5E5E),
            fontWeight: FontWeight.normal,
            fontSize: 20));
  }
}
