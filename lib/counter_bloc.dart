import 'package:bloc/bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(state.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(CounterState(state.counter - 1));
    });
  }
}
