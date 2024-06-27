import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DummyLoader extends StatelessWidget {
  const DummyLoader({super.key});
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListView.builder(
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
                  child: Image.asset(Assets.images.topTrending.psycology.path),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'trendingPodcast[index].title',
                          style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'trendingPodcast[index].subtitle',
                          style: TextStyle(
                            color: const Color(0xFF1F1F1F).withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'trendingPodcast[index].duration',
                          style: TextStyle(
                            color: const Color(0xFF1F1F1F).withOpacity(0.7),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
