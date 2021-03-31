import 'package:bloc2/data/counter_repository.dart';
import 'package:bloc2/data/i_counter_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCounterRepository extends CounterRepository with Mock {}

main() {
  group('Counter Tests', () {
    MockCounterRepository counterRepository = MockCounterRepository();
    test('Test if the number is incremented', () {
      //Arrange

      // Act
      int increment = counterRepository.increment(1);

      //Assert
      expect(increment, 2);
    });
    test('Test if the number is decremented', () {
      //Arrange

      // Act
      int decrement = counterRepository.decrement(1);

      //Assert

      expect(decrement, 0);
    });
  });
}
