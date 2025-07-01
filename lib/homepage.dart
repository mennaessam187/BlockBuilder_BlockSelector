import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_cubit.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_state.dart';
import 'package:mastering_state_management_wael_abo_hamza/widget/w1.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 150,
        ),
        widget1((state) => state.counter1, (context, counter1) {
          return Text("${counter1}");
        }, () {
          context.read<counterCubit>().increament1();
        }, () {
          context.read<counterCubit>().decreament1();
        }),
        const Divider(
          color: Colors.red,
          thickness: 10,
        ),
        widget1((state) => state.counter2, (context, counter2) {
          return Text("${counter2}");
        }, () {
          context.read<counterCubit>().increament2();
        }, () {
          context.read<counterCubit>().decreament2();
        }),
        const Divider(
          color: Colors.red,
          thickness: 10,
        ),
        widget1((state) => state.counter3, (context, counter3) {
          if (counter3 is increamentCounter) {
            return Text(
              "${counter3}",
              style: TextStyle(color: Colors.green),
            );
          }
          if (counter3 is decreamentCounter) {
            return Text(
              "${counter3}",
              style: TextStyle(color: Color.fromARGB(255, 190, 18, 18)),
            );
          }
          return Text(
            "${counter3}",
            style: TextStyle(color: Colors.black),
          );
        }, () {
          context.read<counterCubit>().increament3();
        }, () {
          context.read<counterCubit>().decreament3();
        }),
      ],
    );
  }
}
