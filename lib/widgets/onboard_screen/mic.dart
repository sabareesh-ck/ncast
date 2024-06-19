import 'package:flutter/material.dart';
import 'package:ncast/gen/assets.gen.dart';

class Mic extends StatelessWidget {
  const Mic({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 370,
      height: 370,
      top: 105,
      left: 10,
      child: Image.asset(Assets.images.mic.path),
    );
  }
}
