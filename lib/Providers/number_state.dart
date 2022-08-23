import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
STEP 1
Create a class that extends the state notifier
In this example we create a State that will hold a list of integers
 */
class NumberNotifier extends StateNotifier<List<int>> {
  /*
  STEP 2
  Initialize the class by using a constructor
  Here we 
   
   */
  NumberNotifier() : super([]);

/*
NOTE
The state in a state notifier is immutable
We should change the state in an immutable manner;
STEP 3
We can then create a start by creating 2 functions 
that will help with change of the state
 */
  void add(int number) {
    state = [...state, number];
  }

  void delete(int number) {
    state = [
      for (final Loopnumber in state)
        if (number != Loopnumber) Loopnumber,
    ];
  }
}
