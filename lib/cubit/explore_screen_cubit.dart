import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/firebase/firebase.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'explore_screen_state.dart';

class ExploreScreenCubit extends Cubit<ExploreScreenState> {
  ExploreScreenCubit() : super(ExploreScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(ExploreScreenLoading());
    // addTopPromoted();
    // addTopTrending();
    toppromoted = await gettopPromoted();
    toptrending = await getTopTrending();
    emit(ExploreScreenLoaded(
        topPodcast: toppromoted, trendingPodcasts: toptrending));
  }
}
