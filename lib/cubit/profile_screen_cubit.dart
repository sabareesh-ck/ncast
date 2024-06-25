import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/model/promoted_podcast.dart';

part 'profile_screen_state.dart';

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  ProfileScreenCubit() : super(ProfileScreenInitial());
  Future<void> loadedPodcasts() async {
    emit(ProfileScreenLoading(recentlyPlayed: recentlyPlayed));
    Future.delayed(const Duration(seconds: 3), () {
      emit(ProfileScreenLoaded(recentlyPlayed: recentlyPlayed));
    });
  }
}
