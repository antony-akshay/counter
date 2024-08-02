import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    var state1 = state as CounterInitial;
    on<Increment1>(
        (event, emit) => emit(CounterInitial(count: event.num+1)));
  }
}
