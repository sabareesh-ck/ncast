part of 'favourite_screen_cubit.dart';

@immutable
sealed class FavouriteScreenState {}

final class FavouriteScreenInitial extends FavouriteScreenState {}

final class FavouriteScreenLoading extends FavouriteScreenState {
  FavouriteScreenLoading();
}

final class FavouriteScreenLoaded extends FavouriteScreenState {
  final List<TrendingPodcast> favouritePodcasts;

  FavouriteScreenLoaded({
    required this.favouritePodcasts,
  });
}
