import 'package:bloc2/data/i_counter_repository.dart';

class CounterRepository implements ICounterRepository {
  @override
  int decrement(num value) {
    if (value > 0) {
      return value - 1;
    } else {
      return 0;
    }
  }

  @override
  int increment(int value) {
    return value + 1;
  }
}
