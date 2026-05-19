import 'package:flutter_riverpod/flutter_riverpod.dart';

final timerProvider =
StateNotifierProvider<TimerNotifier, int>((ref) {
  return TimerNotifier();
});

class TimerNotifier extends StateNotifier<int> {

  TimerNotifier() : super(180);

  void decrement() {
    if (state > 0) {
      state--;
    }
  }

  void reset() {
    state = 180;
  }
}