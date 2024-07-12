import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerInitial()) {
    on<PlayTap>((event, emit) {
      emit(PlayerPlay());
    });
    on<PauseTap>((event, emit) {
      emit(PlayerPause());
    });
  }
  void fullyPlayed() {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(PlayerPause());
  }
}
