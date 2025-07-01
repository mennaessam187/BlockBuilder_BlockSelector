class counter_state {
  final int counter;
  counter_state(this.counter);
}

class increamentCounter extends counter_state {
  increamentCounter(super.counter);
}

class decreamentCounter extends counter_state {
  decreamentCounter(super.counter);
}
