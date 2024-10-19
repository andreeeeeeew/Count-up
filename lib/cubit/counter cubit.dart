import 'package:basketball_counter_app/cubit/counter%20state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<Couterstate> {
  CounterCubit(initialState) : super(CounterAstate());
  int teamapoint = 0, teambpoint = 0;
  void TeamAincreament({
    required int buttomnum,
    required String team,
  }) {
    if (team == 'A') {
      teamapoint += buttomnum;
      emit(CounterAstate());
    } else {
      teamapoint += buttomnum;
      emit(CounterBstate());
    }
  }
}
