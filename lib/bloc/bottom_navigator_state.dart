part of 'bottom_navigator_bloc.dart';

@immutable
sealed class BottomNavigatorState {
  String get icon1 => Assets.images.icon.headphones;
  String get icon2 => Assets.images.icon.compass;
  String get icon3 => Assets.images.icon.heart;
  String get icon4 => Assets.images.icon.contact;
}

final class BottomNavigatorInitial extends BottomNavigatorState {
  @override
  String get icon1 => Assets.images.icon.headphoneTap;
}

final class BottomNavigatorHome extends BottomNavigatorState {
  @override
  String get icon1 => Assets.images.icon.headphoneTap;
}

final class BottomNavigatorExplore extends BottomNavigatorState {
  @override
  String get icon2 => Assets.images.icon.compassTap;
}

final class BottomNavigatorFavourite extends BottomNavigatorState {
  @override
  String get icon3 => Assets.images.icon.heartTap;
}

final class BottomNavigatorProfile extends BottomNavigatorState {
  @override
  String get icon4 => Assets.images.icon.profileTap;
}
