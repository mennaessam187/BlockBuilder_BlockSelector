import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_state.dart';

class counterCubit extends Cubit<counterState> {
  counterCubit() : super(counterState(0, 0, 0));
  increament1() {
    emit(increamentCounter(state.counter1 + 1, state.counter2, state.counter3));
  }

  decreament1() {
    emit(decreamentCounter(state.counter1 - 1, state.counter2, state.counter3));
  }

  increament2() {
    emit(increamentCounter(state.counter1, state.counter2 + 1, state.counter3));
  }

  decreament2() {
    emit(decreamentCounter(state.counter1, state.counter2 - 1, state.counter3));
  }

  increament3() {
    emit(increamentCounter(state.counter1, state.counter2, state.counter3 + 1));
  }

  decreament3() {
    emit(decreamentCounter(state.counter1, state.counter2, state.counter3 - 1));
  }
}
