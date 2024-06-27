part of 'explore_screen_cubit.dart';

@immutable
sealed class ExploreScreenState {}

final class ExploreScreenInitial extends ExploreScreenState {}

final class ExploreScreenLoading extends ExploreScreenState {
  ExploreScreenLoading();
}

final class ExploreScreenLoaded extends ExploreScreenState {
  final List<TopPodcast> topPodcast;
  final List<TrendingPodcast> trendingPodcasts;

  ExploreScreenLoaded({
    required this.topPodcast,
    required this.trendingPodcasts,
  });
}
