import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 50,
        left: 25,
        right: 25,
      ),
      child: Container(
        height: 72,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color(0xFF4C0099).withOpacity(0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(Assets.images.icon.headphones),
            SvgPicture.asset(Assets.images.icon.compass),
            SvgPicture.asset(Assets.images.icon.heart),
            SvgPicture.asset(Assets.images.icon.contact),
          ],
        ),
      ),
    );
  }
}
