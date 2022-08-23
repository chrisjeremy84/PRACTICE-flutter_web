import 'dart:html';
import 'dart:js';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'Providers/number_state.dart';

void main() {
  //TESTING STATE NOTIFIER PROVIDER
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

/*
- Step 4 -
// Finally, we are using StateNotifierProvider to allow the UI to interact with
// our TodosNotifier class.
 */
final numberNotifierProvider =
    StateNotifierProvider<NumbersProvider, List>((ref) => NumbersProvider());

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
/*
- Step 5 - 
We watch the provide and update the UI if the state has been changed


NOTE
With the recent changes in the riverpod syntax
We should listen to the state notifier as 
-> ref.watch(NumberNotifierProvider)

Instead of

-> ref.watch(NumberNotifierProvider.state)

 */
    List _numbers = ref.watch(numberNotifierProvider);

    //Returning the UI
    return Stack(
      children: [
        Container(
            child: ListView.builder(
          itemBuilder: ((context, index) =>
              Text("${_numbers[index].toString()}")),
          itemCount: _numbers.length,
        )),
        const SizedBox(height: 5, width: 4),
        FloatingActionButton(onPressed: () {
          //We finally use the StateNotifierProvider to interact with the class created
          ref.read(numberNotifierProvider).add(6);
          print(_numbers);
        })
      ],
    );
  }
}
