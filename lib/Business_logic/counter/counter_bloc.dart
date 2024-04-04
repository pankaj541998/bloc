import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncremnetCouter>(_incremnetCouter);
    on<DecremnetCouter>(_decremnetCouter);
  }
  void _incremnetCouter(IncremnetCouter evet, Emitter<CounterState> mit) {
    emit(state.copyWith(counter: state.counter + 1));

  }
  void _decremnetCouter(DecremnetCouter evet, Emitter<CounterState> mit) {
    emit(state.copyWith(counter: state.counter-1));
  }
}
