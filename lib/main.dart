import 'dart:js';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

void main() {
/* IN THIS ATTEMPT, WE ARE RUNNING TESTING THE RIVERPOD PLUGIN

 THE FOLLOWING ARE THE STEPS TO TAKE;
 STEP 1 - Wrap the root widget with the 'ProviderScope()'

 The ProviderScope will be in charge of all the states 
 changed and created in  the application
*/
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

/* STEP 2 - DECLARE STATE PROVIDER
This will typically be the object or the variable 
that we be changed throughout the app.

* NOTE
The state will need to have an object type as
every state required a provider to return a certain variable type.

* NOTE
The ref parameter. It is used to access other providers

*NOTE
Providers are declared globally
*/

final numberStateProvider = StateProvider((ref) {
  return 0;
});

/*  STEP 3 - Extend the class with the ConsumerWidget
    This will enable us to access the provider without 
    the need of a builder. As builder's require the state 
    to be listened to hence limiting possibilities.

    ConsumerWidget decreases the ammount of codes written
    
     */
class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /* STEP 4 - Listen to the provider
    Using the ref parameter.

    However the main difference with the basic provider
    is that in this situation it will use the state notifier
    it will also listen to the state.

     */
    final number = ref
        .watch(numberStateProvider.state)
        .state; // Gets the current value of the state

    return Center(
        child: Row(
      children: [
        Text(number.toString()),
        GestureDetector(
          onTap: () {
            ref
                .read(numberStateProvider.state)
                .state++; // gets the current state and updates the current states
          },
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: const Text('Increment'),
          ),
        )
      ],
    ));
  }
}
