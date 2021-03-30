part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterLoaded extends CounterState {
  final int value;

  CounterLoaded(this.value);
  @override
  List<Object> get props => [value];
}

class CounterLoading extends CounterState {
  @override
  List<Object> get props => [];
}
