import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/screen/player.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 96,
                width: 108,
                child: Image.asset(recentlyPlayed[index].imagepath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentlyPlayed[index].title,
                        style: const TextStyle(
                            color: Color(0xFF1F1F1F),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${recentlyPlayed[index].durationRemaining} min remaining',
                        style: TextStyle(
                          color: const Color(0xFF1F1F1F).withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 8,
                            width: 176,
                            decoration: BoxDecoration(
                                color: const Color(0xFFE9E9E9),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: 8,
                            width: Random().nextDouble() * 176,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFF5757),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const Player(),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      SvgPicture.asset(Assets.images.icon.play),
                      SvgPicture.asset(
                        Assets.images.icon.playBackground,
                        height: 50,
                        width: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      itemCount: recentlyPlayed.length,
    );
  }
}
