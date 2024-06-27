part of 'home_screen_cubit_cubit.dart';

@immutable
sealed class HomeScreenCubitState {
  const HomeScreenCubitState();
}

final class HomeScreenCubitInitial extends HomeScreenCubitState {
  const HomeScreenCubitInitial();
}

final class HomeScreenLoading extends HomeScreenCubitState {
  const HomeScreenLoading();
}

final class HomeScreenLoaded extends HomeScreenCubitState {
  final List<PromotedPodcast> promotedPodcasts;
  final List<TrendingPodcast> trendingPodcasts;

  const HomeScreenLoaded({
    required this.promotedPodcasts,
    required this.trendingPodcasts,
  });
}

final class HomeScreenLoadFailed extends HomeScreenCubitState {}
