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
    return BlocListener<counter_cubit, counter_state>(
      listener: (context, state) {
        if (state.counter > 5) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Hi Menna!'),
                content: Text('This is a simple alert dialog.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // يقفل التنبيه
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      },
      child: Container(
        width: 300,
        height: 200,
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  context.read<counter_cubit>().increament();
                },
                icon: Icon(Icons.add)),
            BlocBuilder<counter_cubit, counter_state>(
              builder: (context, state) {
                return Container(
                  width: 100,
                  height: 60,
                  child: Text("${state.counter}"),
                );
              },
            ),
            IconButton(
                onPressed: () {
                  context.read<counter_cubit>().decreament();
                },
                icon: Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
