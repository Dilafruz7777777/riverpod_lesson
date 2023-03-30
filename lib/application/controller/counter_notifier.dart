import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/application/controller/count_state.dart';

class CounterNotifier extends StateNotifier<CountState> {
  CounterNotifier(): super(CountState());

  void increment(){
    state  = state.copyWith(++state.count);

  }

}