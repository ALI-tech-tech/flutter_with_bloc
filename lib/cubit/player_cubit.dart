import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'player_state.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerInitialState(players: allPlayers));
  void filterPlayers(String name) {
    if (name.isEmpty) {
      emit(PlayerInitialState(players: allPlayers));
    } else {
      final filteredList = allPlayers
          .where((player) => player['name']
              .toString()
              .toLowerCase()
              .contains(name.toLowerCase()))
          .toList();

      emit(PlayerFilterdState(filterdplayers: filteredList));
    }
  }
}
