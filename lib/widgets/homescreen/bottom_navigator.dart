import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 500,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 72,
            width: 400,
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
        ),
      ),
    );
  }
}
