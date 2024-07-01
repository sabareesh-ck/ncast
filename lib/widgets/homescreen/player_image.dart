import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class PlayerImage extends StatelessWidget {
  const PlayerImage({super.key, required this.imagepath});
  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 33, right: 33),
          child: SizedBox(
            height: 364,
            width: 364,
            child: Image.asset(
              imagepath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 335),
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 72,
                  width: 266,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: const Color(0xFF4C0099).withOpacity(0.1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(Assets.images.icon.share),
                      SvgPicture.asset(Assets.images.icon.heart),
                      SvgPicture.asset(Assets.images.icon.archive),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
