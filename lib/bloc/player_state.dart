part of 'player_bloc.dart';

@immutable
sealed class PlayerState {}

final class PlayerInitial extends PlayerState {}

final class PlayerPlay extends PlayerState {}

final class PlayerPause extends PlayerState {}
