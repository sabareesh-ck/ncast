import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PodcastGridview extends StatelessWidget {
  const PodcastGridview(
      {super.key, required this.showLoading, required this.trendingScreen});
  final List trendingScreen;
  final bool showLoading;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: showLoading,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          mainAxisSpacing: 19,
        ),
        children: [
          for (final podcast in trendingScreen)
            SizedBox(
              height: 150,
              width: 174,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    fit: BoxFit.fill,
                    podcast.imagepath,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    podcast.title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    podcast.subtitle,
                    style: TextStyle(
                      color: const Color(0xFF1F1F1F).withOpacity(0.7),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
