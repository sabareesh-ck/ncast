import 'package:flutter/material.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ncast1 extends StatelessWidget {
  const Ncast1({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 100, top: 150, child: SvgPicture.asset(Assets.images.ncast1));
  }
}
