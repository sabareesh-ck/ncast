import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/widgets/homescreen/podcast_gridview.dart';
import 'package:ncast/widgets/homescreen/search.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class TrendingPodcastScreen extends StatelessWidget {
  const TrendingPodcastScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: Navigator.of(context).pop,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SvgPicture.asset(Assets.images.icon.back),
                SvgPicture.asset(
                  Assets.images.icon.backIcon,
                  height: 50,
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        title: const Text(
          "Trending Podcasts",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xFF1F1F1F),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Search(),
            const Padding(
              padding: EdgeInsets.only(right: 25, left: 25, top: 30),
              child: PodcastGridview(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Text(
                "Recommended For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF1F1F1F),
                ),
              ),
            ),
            Trending(trendingPodcast: recommendedTrending)
          ],
        ),
      ),
    );
  }
}
