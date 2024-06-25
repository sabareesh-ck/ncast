import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Promoted extends StatelessWidget {
  const Promoted(
      {super.key, required this.showLoading, required this.promotedPodcasts});
  final List promotedPodcasts;
  final bool showLoading;

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
              itemCount: promotedPodcasts.length,
              itemBuilder: (ctx, index) {
                final promotedPodcast = promotedPodcasts[index];

                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 15,
                  ),
                  child: Image.asset(
                    promotedPodcast.imagepath,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
        ));
  }
}
