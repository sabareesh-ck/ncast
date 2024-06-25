part of 'bottom_navigator_bloc.dart';

@immutable
sealed class BottomNavigatorEvent {}

class HomeScreenTap extends BottomNavigatorEvent {
  HomeScreenTap();
}

class ExploreScreenTap extends BottomNavigatorEvent {
  ExploreScreenTap();
}

class FavouriteScreenTap extends BottomNavigatorEvent {
  FavouriteScreenTap();
}

class ProfileScreenTap extends BottomNavigatorEvent {
  ProfileScreenTap();
}
