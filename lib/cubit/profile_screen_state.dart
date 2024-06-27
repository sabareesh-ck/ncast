part of 'profile_screen_cubit.dart';

@immutable
sealed class ProfileScreenState {}

final class ProfileScreenInitial extends ProfileScreenState {}

final class ProfileScreenLoaded extends ProfileScreenState {
  final List<RecentlyPlayedPodcast> recentlyPlayed;

  ProfileScreenLoaded({
    required this.recentlyPlayed,
  });
}

final class ProfileScreenLoading extends ProfileScreenState {
  ProfileScreenLoading();
}
