import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_counter/bloc/counter_bloc.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text('${state.count}');
              },
            ),
            TextButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(Increment1());
                },
                child: Text('1+'))
          ],
        ),
      )),
    );
  }
}
