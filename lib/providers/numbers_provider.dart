import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberNotifier extends StateNotifier<int> {
  NumberNotifier() : super(0);

  void add() {
    state = state + 1;
  }

  void subtract() {
    state = state - 1;
  }

  void reset() {
    state = 0;
  }
}

final numberProvider =
    StateNotifierProvider<NumberNotifier, int>((ref) => NumberNotifier());
