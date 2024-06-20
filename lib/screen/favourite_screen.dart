import 'package:flutter/material.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 23, top: 30),
          child: Text(
            "Favourite Podcasts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
        Trending(trendingPodcast: favouritePodcast)
      ],
    );
  }
}
