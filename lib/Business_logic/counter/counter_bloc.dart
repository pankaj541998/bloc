import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncremnetCouter>((IncremnetCouter evet, Emitter<CounterState> emit) =>
        state.copyWith(counter: state.counter + 1));
    on<DecremnetCouter>((DecremnetCouter evet, Emitter<CounterState> emit) =>
        state.copyWith(counter: state.counter - 1));
  }
}
