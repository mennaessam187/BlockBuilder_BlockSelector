import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_state_management_wael_abo_hamza/Block_consumer.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_cubit.dart';
import 'package:mastering_state_management_wael_abo_hamza/cubit/counter_state.dart';
import 'package:mastering_state_management_wael_abo_hamza/Block_listener.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<counter_cubit>(
      create: (context) => counter_cubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Mastring in Statemanagement"),
          ),
          body: homepage2(),
        ),
      ),
    );
  }
}
