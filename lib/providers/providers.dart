import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
~ STEP 1 ~
Create class that extends ChangeNotifier
No need to specify the return class on the class extension

~ NOTE ~
Using the Change Notifier Provider is not recommended by riverpod.
However, It is recommended when working with mutable states.

For this reason, Riverpod suggests using StateNotifierProvider and only
Using ChangeNotifierProvider when you are sure your state is immutable.

With the state being Mutable we can directly access the methods withing the class
from our state providers.
 */
class NumbersNotifier extends ChangeNotifier {
/*
~ STEP 2 ~
We initialize our object.
 */
  final List<int> numbers = [];

/*
~ STEP 3 ~
We Create the classes that enable the state to be mutable.
 */

  void addNumber(int number) {
    /*
~ NOTE ~
Since our state is mutable, we can call the add method directly to our List.

~ STEP 4 ~
We call notifyListeners from our method to update the UI once our state changes
 */
    numbers.add(number);
    notifyListeners();
  }
}
