import 'package:flutter/material.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/widgets/homescreen/category_slide.dart';
import 'package:ncast/widgets/homescreen/top_podcast.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 35),
            child: Text(
              "Today’s Top 5 Podcasts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF1F1F1F)),
            ),
          ),
          TopPodcast(),
          CategorySlide(),
          Trending(trendingPodcast: topTrending)
        ],
      ),
    );
  }
}
