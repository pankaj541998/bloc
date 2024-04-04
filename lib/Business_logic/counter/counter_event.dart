part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}



class IncremnetCouter extends CounterEvent {}
class DecremnetCouter extends CounterEvent {}