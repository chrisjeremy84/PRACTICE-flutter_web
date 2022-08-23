import 'dart:html';
import 'dart:js';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'providers/providers.dart';

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
~ STEP 5 ~
We create our ChangeNotifierProvider which will enable
the UI to interact with our Change Notifier class 
 */

final _numberChangeNotifierProvider =
    ChangeNotifierProvider<NumbersNotifier>((ref) {
  return NumbersNotifier();
});

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*
          ~ STEP 6 ~
          We listen to the changes from out ChangeNotifierProvider
           */
    final _number = ref.watch(_numberChangeNotifierProvider);
    print(_number.numbers);

    return Stack(
      children: <Widget>[
        ListView.builder(
          itemBuilder: (context, index) {
            /*
          ~ STEP 7 ~
          Render the List of integers to UI
           */
            return Text(_number.numbers[index].toString());
          },
          itemCount: _number.numbers.length,
        ),
        const SizedBox(height: 10, width: 10),
        GestureDetector(
          child: Material(child: Icon(Icons.add)),
          onTap: () {
            _number.addNumber(4);
          },
          onLongPress: () {
            _number.addNumber(7);
          },
        )
      ],
    );
  }
}
