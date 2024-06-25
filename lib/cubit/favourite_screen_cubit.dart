import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'favourite_screen_state.dart';

class FavouriteScreenCubit extends Cubit<FavouriteScreenState> {
  FavouriteScreenCubit() : super(FavouriteScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(FavouriteScreenLoading(favouritePodcasts: favouritePodcast));
    Future.delayed(const Duration(seconds: 3), () {
      emit(FavouriteScreenLoaded(favouritePodcasts: favouritePodcast));
    });
  }
}
