import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncast/cubit/explore_screen_cubit.dart';
import 'package:ncast/widgets/homescreen/category_slide.dart';
import 'package:ncast/widgets/homescreen/top_podcast.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 35),
            child: Text(
              "Today’s Top 5 Podcasts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF1F1F1F)),
            ),
          ),
          BlocBuilder<ExploreScreenCubit, ExploreScreenState>(
            builder: (context, state) {
              if (state is ExploreScreenLoaded) {
                return TopPodcast(
                  showLoading: false,
                  topPodcast: state.topPodcast,
                );
              }
              if (state is ExploreScreenLoading) {
                return TopPodcast(
                  showLoading: true,
                  topPodcast: state.topPodcast,
                );
              }
              return const SizedBox.shrink();
            },
          ),
          const CategorySlide(),
          BlocBuilder<ExploreScreenCubit, ExploreScreenState>(
            builder: (context, state) {
              if (state is ExploreScreenLoaded) {
                return Trending(
                  trendingPodcast: state.trendingPodcasts,
                  showLoading: false,
                );
              }
              if (state is ExploreScreenLoading) {
                return Trending(
                  trendingPodcast: state.trendingPodcasts,
                  showLoading: true,
                );
              }
              return const SizedBox.shrink();
            },
          )
        ],
      ),
    );
  }
}
