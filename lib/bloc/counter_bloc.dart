import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentState = state.count;
      final incrementedState = currentState + 1;
      return emit(CounterState(count: incrementedState));
    });
    on<Decrement>((event, emit) {
      final currentState = state.count;
      final decrementedState = currentState -1;
      return emit(CounterState(count: decrementedState));
    });
  }
}
