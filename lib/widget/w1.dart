import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_cubit.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_state.dart';

class widget1 extends StatefulWidget {
  final Function()? onPressedadd;
  final Function()? onPressedremove;

  final int Function(counter_state) selector;
  final Widget Function(BuildContext, dynamic) builder;
  widget1(this.selector, this.builder, this.onPressedadd, this.onPressedremove,
      {super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: widget.onPressedadd, icon: Icon(Icons.add)),
        BlocSelector<counter_cubit, counter_state, int>(
            selector: widget.selector, builder: widget.builder),
        IconButton(onPressed: widget.onPressedremove, icon: Icon(Icons.remove)),
      ],
    ));
  }
}
