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
After creating the class
We can then create our state notifier provider
This state notifier provider should in this case
return the state notifier class created

 */
final numberProvider =
    StateNotifierProvider<NumberNotifier, List>((ref) => NumberNotifier());

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
/*
- Step 5 - 
After creating the State Notifier Provider
We then watch it using out ref
 */

    List Number = ref.watch(numberProvider);
    return Stack(
      children: [
        Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(Number[index].toString());
            },
            itemCount: Number.length,
          ),
        ),
        const SizedBox(height: 5),
        FloatingActionButton(onPressed: (() {
          //We update the state by reading our provider instead of our consumer.
          ref.read(numberProvider).add(5);
          print(Number.toString());
        }))
      ],
    );
  }
}
