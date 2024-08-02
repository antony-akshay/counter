part of 'counter_bloc.dart';

@sealed
class CounterState {}

final class CounterInitial extends CounterState {
  final int count;
  CounterInitial({this.count = 0});
}
