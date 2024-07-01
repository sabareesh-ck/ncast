import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/screen/player.dart';
import 'package:ncast/widgets/homescreen/dummy_loader.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed(
      {super.key, required this.recentlyPlayed, required this.showLoading});
  final List recentlyPlayed;
  final bool showLoading;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: showLoading,
      child: showLoading
          ? const DummyLoader()
          : ListView.builder(
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
                                  color:
                                      const Color(0xFF1F1F1F).withOpacity(0.7),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              showLoading
                                  ? Container(
                                      height: 8,
                                      width: 176,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE9E9E9),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )
                                  : Stack(
                                      children: [
                                        Container(
                                          height: 8,
                                          width: 176,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFE9E9E9),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        Container(
                                          height: 8,
                                          width: Random().nextDouble() * 176,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFFF5757),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                builder: (ctx) => Player(
                                  imagepath: recentlyPlayed[index].imagepath,
                                  title: recentlyPlayed[index].title,
                                  duration:
                                      recentlyPlayed[index].durationRemaining,
                                  subtitle: 'Dummy Subtitle',
                                ),
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
            ),
    );
  }
}
