part of 'player_bloc.dart';

@immutable
sealed class PlayerEvent {}

class PlayTap extends PlayerEvent {
  PlayTap();
}

class PauseTap extends PlayerEvent {
  PauseTap();
}
