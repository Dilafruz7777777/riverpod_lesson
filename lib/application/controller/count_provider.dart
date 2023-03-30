import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/application/controller/count_state.dart';
import 'package:riverpod_lesson/application/controller/counter_notifier.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CountState>((ref) {
  return CounterNotifier();
});