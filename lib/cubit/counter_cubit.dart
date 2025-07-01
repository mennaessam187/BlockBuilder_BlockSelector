import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_state.dart';

class counter_cubit extends Cubit<counter_state> {
  counter_cubit() : super(counter_state(0));
  increament() {
    emit(increamentCounter(state.counter + 1));
  }

  decreament() {
    emit(decreamentCounter(state.counter - 1));
  }
}
