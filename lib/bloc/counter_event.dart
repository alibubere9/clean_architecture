part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementEvent extends CounterEvent {
  final int value;

  IncrementEvent(this.value);
  @override
  List<Object> get props => [value];
}

class DecrementEvent extends CounterEvent {
  final int value;

  DecrementEvent(this.value);

  @override
  List<Object> get props => [value];
}
