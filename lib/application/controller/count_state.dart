import 'dart:io';

class CountState {
   int count;
  CountState({this.count = 0});

  CountState copyWith(int? count){
    return CountState(count: count ?? this.count);

  }

}