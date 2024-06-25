import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ncast/gen/assets.gen.dart';

part 'bottom_navigator_event.dart';
part 'bottom_navigator_state.dart';

class BottomNavigatorBloc
    extends Bloc<BottomNavigatorEvent, BottomNavigatorState> {
  BottomNavigatorBloc() : super(BottomNavigatorInitial()) {
    on<HomeScreenTap>((event, emit) {
      emit(BottomNavigatorHome());
    });
    on<ExploreScreenTap>((event, emit) {
      emit(BottomNavigatorExplore());
    });
    on<FavouriteScreenTap>((event, emit) {
      emit(BottomNavigatorFavourite());
    });
    on<ProfileScreenTap>((event, emit) {
      emit(BottomNavigatorProfile());
    });
  }
}
