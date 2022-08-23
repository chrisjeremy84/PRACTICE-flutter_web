import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumbersProvider extends StateNotifier<List<int>> {
  //Initialize class with empty list
  NumbersProvider() : super([]);

  /**
   Since the state is immutable
   -> We cannot add an NumberProvider.add
   -> We make a new list adding the previous elements with the new ones
   -> For this we use fucntions that contain the dart spread operator
   */

  void add(int number) {
    state = [...state, number];
  }

  void delete(int number) {
    for (final loopnumber in state) loopnumber;
  }
}
