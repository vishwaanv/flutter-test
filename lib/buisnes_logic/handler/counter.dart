import 'package:connou_test/data/models/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A Handler to handle counter operations.
class CounterHandler extends Cubit<Counter> {
  /// Initializes the counter with an initial value of 0.
  CounterHandler() : super(Counter(0));

  /// Increments the counter value by 1.
  ///
  /// Emits the updated counter value to notify listeners.
  void increment() => emit(Counter(state.count + 1));

  /// decrease  the counter value by 1.
  ///
  /// Emits the updated counter value to notify listeners.
  ///
  void decrement() => emit(Counter(state.count - 1));
}
