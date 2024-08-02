import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_counter/bloc/counter_bloc.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {

      int count=0;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
               
                if (state is CounterInitial) {
                  count = state.count;
                  return Text(state.count.toString(),style: TextStyle(fontSize: 40),);
                }
                return  Text(count.toString());
               
              },
            ),
            TextButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(Increment1(num: count));
                },
                child: const Text('1+',style: TextStyle(fontSize: 40),))
          ],
        ),
      )),
    );
  }
}
