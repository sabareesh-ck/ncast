import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/firebase/firebase.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'profile_screen_state.dart';

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  ProfileScreenCubit() : super(ProfileScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(ProfileScreenLoading());
    //addRecentPlayedPodcasts();
    recentlyplayed = await getRecentlyPlayedPodcast();
    emit(ProfileScreenLoaded(recentlyPlayed: recentlyplayed));
  }
}
