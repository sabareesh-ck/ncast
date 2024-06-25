import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'explore_screen_state.dart';

class ExploreScreenCubit extends Cubit<ExploreScreenState> {
  ExploreScreenCubit() : super(ExploreScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(ExploreScreenLoading(
        topPodcast: topPodcast, trendingPodcasts: topTrending));
    Future.delayed(const Duration(seconds: 3), () {
      emit(ExploreScreenLoaded(
          topPodcast: topPodcast, trendingPodcasts: topTrending));
    });
  }
}
