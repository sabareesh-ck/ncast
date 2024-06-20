import 'package:flutter/material.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/screen/trending_podcast.dart';
import 'package:ncast/widgets/homescreen/promoted.dart';
import 'package:ncast/widgets/homescreen/search.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class HeadphoneScreen extends StatelessWidget {
  const HeadphoneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Search(),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 35),
            child: Text(
              "Promoted Podcasts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF1F1F1F)),
            ),
          ),
          const Promoted(),
          Padding(
            padding: const EdgeInsets.only(
              right: 55,
              left: 30,
              top: 25,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending Podcasts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF1F1F1F),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const TrendingPodcastScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'See more',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color(0xFF1F1F1F).withOpacity(0.7),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Trending(
            trendingPodcast: trendingPodcast,
          )
        ],
      ),
    );
  }
}
