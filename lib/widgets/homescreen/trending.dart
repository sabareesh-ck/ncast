import 'package:flutter/material.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class Trending extends StatelessWidget {
  const Trending({super.key, required this.trendingPodcast});
  final List<dynamic> trendingPodcast;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 96,
                width: 108,
                child: Image.asset(trendingPodcast[index].imagepath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trendingPodcast[index].title,
                        style: const TextStyle(
                            color: Color(0xFF1F1F1F),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        trendingPodcast[index].subtitle,
                        style: TextStyle(
                          color: const Color(0xFF1F1F1F).withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        trendingPodcast[index].duration,
                        style: TextStyle(
                          color: const Color(0xFF1F1F1F).withOpacity(0.7),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
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
              )
            ],
          ),
        );
      },
      itemCount: trendingPodcast.length,
    );
  }
}
