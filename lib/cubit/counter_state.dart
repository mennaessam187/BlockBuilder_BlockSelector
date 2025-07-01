// ignore: camel_case_types
class counterState {
  final int counter1;
  final int counter2;
  final int counter3;
  counterState(this.counter1, this.counter2, this.counter3);
}

// ignore: camel_case_types
class increamentCounter extends counterState {
  increamentCounter(super.counter1, super.counter2, super.counter3);
}

// ignore: camel_case_types
class decreamentCounter extends counterState {
  decreamentCounter(super.counter1, super.counter2, super.counter3);
}
