import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_cubit.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_state.dart';

class homepage2 extends StatefulWidget {
  const homepage2({super.key});

  @override
  State<homepage2> createState() => homepage2State();
}

class homepage2State extends State<homepage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: Column(
        children: [
          IconButton(
              onPressed: () {
                context.read<counter_cubit>().increament();
              },
              icon: Icon(Icons.add)),
          BlocConsumer<counter_cubit, counter_state>(
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
    );
    ;
  }
}
