import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

class TopPodcast extends StatelessWidget {
  const TopPodcast(
      {super.key, required this.showLoading, required this.topPodcast});
  final bool showLoading;
  final List topPodcast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 210,
        width: 400,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Skeletonizer(
            enabled: showLoading,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topPodcast.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 15,
                  ),
                  child: Image.asset(
                    topPodcast[index].imagepath,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
        ));
  }
}
