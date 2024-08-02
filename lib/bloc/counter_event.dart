part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class Increment1 extends CounterEvent{}
class Increment2 extends CounterEvent{}
class Increment3 extends CounterEvent{}
class Increment4 extends CounterEvent{}
class Increment5 extends CounterEvent{}