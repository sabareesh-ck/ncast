// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../model/podcast_list.dart';
import '../model/promoted_podcast.dart';

part 'home_screen_cubit_state.dart';

class HomeScreenCubitCubit extends Cubit<HomeScreenCubitState> {
  HomeScreenCubitCubit() : super(const HomeScreenCubitInitial());

  Future<void> loadPromotedPodcasts() async {
    emit(const HomeScreenLoading(
        promotedPodcasts: promatedPodcast, trendingPodcasts: trendingPodcast));
    Future.delayed(const Duration(seconds: 3), () {
      emit(const HomeScreenLoaded(
          promotedPodcasts: promatedPodcast,
          trendingPodcasts: trendingPodcast));
    });
  }
}
