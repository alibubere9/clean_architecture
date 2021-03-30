import 'package:bloc2/bloc/counter_bloc.dart';
import 'package:bloc2/data/couner_repository.dart';
import 'package:bloc2/data/i_counter_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void dI() {
  getIt.registerFactory<CounterBloc>(() => CounterBloc(getIt()));
  getIt.registerFactory<ICounterRepository>(() => CounterRepository());
}
