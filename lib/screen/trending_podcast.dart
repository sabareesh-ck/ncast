import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/cubit/trending_screen_cubit.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/widgets/homescreen/dummy_gridview.dart';
import 'package:ncast/widgets/homescreen/dummy_loader.dart';
import 'package:ncast/widgets/homescreen/podcast_gridview.dart';
import 'package:ncast/widgets/homescreen/search.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class TrendingPodcastScreen extends StatelessWidget {
  const TrendingPodcastScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrendingScreenCubit()..loadedPodcasts(),
      child: Scaffold(
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
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 30),
                child: BlocBuilder<TrendingScreenCubit, TrendingScreenState>(
                  builder: (context, state) {
                    if (state is TrendingScreenLoading) {
                      return const DummyGridview();
                    }
                    if (state is TrendingScreenLoaded) {
                      return PodcastGridview(
                        trendingScreen: state.trendingScreen,
                        showLoading: false,
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
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
              BlocBuilder<TrendingScreenCubit, TrendingScreenState>(
                builder: (context, state) {
                  if (state is TrendingScreenLoaded) {
                    return Trending(
                      trendingPodcast: state.trendingPodcasts,
                      showLoading: false,
                    );
                  }
                  if (state is TrendingScreenLoading) {
                    return const DummyLoader();
                  }
                  return const SizedBox.shrink();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
