import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/firebase/firebase.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'favourite_screen_state.dart';

class FavouriteScreenCubit extends Cubit<FavouriteScreenState> {
  FavouriteScreenCubit() : super(FavouriteScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(FavouriteScreenLoading());
    //addFavouritePodcasts();
    favourites = await getFavouritePodcasts();
    emit(FavouriteScreenLoaded(favouritePodcasts: favourites));
  }
}
