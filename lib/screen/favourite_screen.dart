import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncast/cubit/favourite_screen_cubit.dart';
import 'package:ncast/widgets/homescreen/dummy_loader.dart';
import 'package:ncast/widgets/homescreen/trending.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
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
            BlocBuilder<FavouriteScreenCubit, FavouriteScreenState>(
              builder: (context, state) {
                if (state is FavouriteScreenLoading) {
                  return const DummyLoader();
                }
                if (state is FavouriteScreenLoaded) {
                  return Trending(
                    trendingPodcast: state.favouritePodcasts,
                    showLoading: false,
                  );
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}
