import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc2/data/i_counter_repository.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final ICounterRepository _counterRepository;
  CounterBloc(this._counterRepository) : super(CounterLoaded(1));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is IncrementEvent) {
      yield CounterLoading();
      int newValue = _counterRepository.increment(event.value);
      yield CounterLoaded(newValue);
    } else if (event is DecrementEvent) {
      yield CounterLoading();
      int newValue = _counterRepository.decrement(event.value);
      yield CounterLoaded(newValue);
    }
  }

  
}
