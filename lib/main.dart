import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

void main() {
  //TESTING Flutter Hooks
  // This example is a timer
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
To intergrate the use of flutter hooks;
~ Step 1 ~
Obviously we would have to add the depedency of flutter hooks
 */

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TimerHook(),
    );
  }
}

/*
  ~ Step 2 ~
  Create a class that extends the HookWidget
   */
class TimerHook extends HookWidget {
  @override
  Widget build(BuildContext context) {
    /*
  ~ Step 3 ~
  the useState Hook will be our value notifier.
  It will update the state as soon as the value changes

  In this step we initialize it
   */

    final _numberNotifier = useState(0);

    /*
  ~ Step 4 ~
  We then call the useEffect Hook which handles the normal setState and dispose

  ~ NOTE ~
  The way it works;

  - We create a timer which updates the value by the second
  - within the useEffect and will dispose the timer as the state ends
   */
    useEffect(() {
      final Timer _timer = Timer.periodic(Duration(seconds: 1), (time) {
        //Rememeber the created variable is a value notifier.
        //So in order to use it, you must call its value
        _numberNotifier.value = time.tick;
      });

      return _timer.cancel;
    }, const []);
    return Container(
      //Rememeber the created variable is a value notifier.
      //So in order to use it, you must call its value
      child: Text(_numberNotifier.value.toString()),
    );
  }
}
/*
~ NOTE ~
Hooks can only be called from within a Build method
 */