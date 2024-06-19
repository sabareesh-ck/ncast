import 'package:flutter/material.dart';
import 'package:ncast/gen/assets.gen.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Image.asset(
        Assets.images.background.path,
        width: 684,
        height: 684,
        fit: BoxFit.fill,
      ),
    );
  }
}
