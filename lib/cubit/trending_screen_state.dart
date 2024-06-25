part of 'trending_screen_cubit.dart';

@immutable
sealed class TrendingScreenState {}

final class TrendingScreenInitial extends TrendingScreenState {}

final class TrendingScreenLoaded extends TrendingScreenState {
  final List<TrendingPodcast> trendingPodcasts;
  final List<TrendingPodcast> trendingScreen;

  TrendingScreenLoaded(
      {required this.trendingPodcasts, required this.trendingScreen});
}

final class TrendingScreenLoading extends TrendingScreenState {
  final List<TrendingPodcast> trendingPodcasts;
  final List<TrendingPodcast> trendingScreen;

  TrendingScreenLoading(
      {required this.trendingPodcasts, required this.trendingScreen});
}
