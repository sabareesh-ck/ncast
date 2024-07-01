import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/firebase/firebase.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'trending_screen_state.dart';

class TrendingScreenCubit extends Cubit<TrendingScreenState> {
  TrendingScreenCubit() : super(TrendingScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(TrendingScreenLoading());
    //addTrendingScreen();
    trendingscreen = await getTrendingScreen();
    recommmendedtrending = await getRecommmendedPodcast();
    getRecommmendedPodcast();
    emit(TrendingScreenLoaded(
        trendingPodcasts: recommmendedtrending,
        trendingScreen: trendingscreen));
  }
}
