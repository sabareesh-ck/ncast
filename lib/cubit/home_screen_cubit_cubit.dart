import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:ncast/firebase/firebase.dart';

import '../model/promoted_podcast.dart';

part 'home_screen_cubit_state.dart';

class HomeScreenCubitCubit extends Cubit<HomeScreenCubitState> {
  HomeScreenCubitCubit() : super(const HomeScreenCubitInitial());

  Future<void> loadPromotedPodcasts() async {
    emit(const HomeScreenLoading());
    //addTrendingPodcast();
    //addPromotedPodcast();
    final trending = await getTrendingPodcast();
    final promoted = await getPromotedPodcast();

    emit(HomeScreenLoaded(
        promotedPodcasts: promoted, trendingPodcasts: trending));
  }
}
