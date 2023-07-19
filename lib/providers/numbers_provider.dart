import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberNotifier extends StateNotifier<int> {
  NumberNotifier() : super(0);

  // add 1 to the current state

  // subtract 1 from the current state

  // reset the number back to 0
}

final numberProvider =
    StateNotifierProvider<NumberNotifier, int>((ref) => NumberNotifier());
