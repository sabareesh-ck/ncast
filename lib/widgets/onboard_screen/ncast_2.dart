import 'package:flutter/material.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ncast2 extends StatelessWidget {
  const Ncast2({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 80, top: 260, child: SvgPicture.asset(Assets.images.ncast2));
  }
}
