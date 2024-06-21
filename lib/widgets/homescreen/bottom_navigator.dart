import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key, required this.controller});
  final PageController controller;

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  var icon1 = Assets.images.icon.headphones;
  var icon2 = Assets.images.icon.compass;
  var icon3 = Assets.images.icon.heart;
  var icon4 = Assets.images.icon.contact;
  bool isicon1 = true;
  bool isicon2 = false;
  bool isicon3 = false;
  bool isicon4 = false;
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
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isicon1 = true;
                        isicon2 = false;
                        isicon3 = false;
                        isicon4 = false;
                        icon1 = Assets.images.icon.headphoneTap;
                        icon2 = Assets.images.icon.compass;
                        icon3 = Assets.images.icon.heart;
                        icon4 = Assets.images.icon.contact;
                      });
                      widget.controller.animateToPage(0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(icon1),
                        const SizedBox(
                          height: 5,
                        ),
                        if (isicon1)
                          SvgPicture.asset(Assets.images.icon.dot)
                        else
                          const SizedBox.shrink()
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isicon1 = false;
                        isicon2 = true;
                        isicon3 = false;
                        isicon4 = false;
                        icon1 = Assets.images.icon.headphones;
                        icon2 = Assets.images.icon.compassTap;
                        icon3 = Assets.images.icon.heart;
                        icon4 = Assets.images.icon.contact;
                      });
                      widget.controller.animateToPage(1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(icon2),
                        const SizedBox(
                          height: 5,
                        ),
                        if (isicon2)
                          SvgPicture.asset(Assets.images.icon.dot)
                        else
                          const SizedBox.shrink()
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isicon1 = false;
                        isicon2 = false;
                        isicon3 = true;
                        isicon4 = false;
                        icon1 = Assets.images.icon.headphones;
                        icon2 = Assets.images.icon.compass;
                        icon3 = Assets.images.icon.heartTap;
                        icon4 = Assets.images.icon.contact;
                      });
                      widget.controller.animateToPage(2,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(icon3),
                        const SizedBox(
                          height: 5,
                        ),
                        if (isicon3)
                          SvgPicture.asset(Assets.images.icon.dot)
                        else
                          const SizedBox.shrink()
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isicon1 = false;
                        isicon2 = false;
                        isicon3 = false;
                        isicon4 = true;
                        icon1 = Assets.images.icon.headphones;
                        icon2 = Assets.images.icon.compass;
                        icon3 = Assets.images.icon.heart;
                        icon4 = Assets.images.icon.profileTap;
                      });
                      widget.controller.animateToPage(3,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(icon4),
                        const SizedBox(
                          height: 5,
                        ),
                        if (isicon4)
                          SvgPicture.asset(Assets.images.icon.dot)
                        else
                          const SizedBox.shrink()
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
