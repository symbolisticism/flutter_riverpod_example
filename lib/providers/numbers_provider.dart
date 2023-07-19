import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberNotifier extends StateNotifier<int> {
  NumberNotifier() : super(0);

  // add 1 to the current state
  void add() {
    state = state + 1;
  }

  // subtract 1 from the current state
  void subtract() {
    state = state - 1;
  }

  // reset the number back to 0
  void reset() {
    state = 0;
  }
}

final numberProvider =
    StateNotifierProvider<NumberNotifier, int>((ref) => NumberNotifier());
