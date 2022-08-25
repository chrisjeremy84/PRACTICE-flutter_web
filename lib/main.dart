import 'dart:async';
import 'dart:js';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/hook.dart';

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
      child: TimerCustomHook(),
    );
  }
}

/*
  ~ Step 2 ~
  Create a class that extends the HookWidget
   */

class TimerCustomHook extends HookWidget {
  const TimerCustomHook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
  ~ Step 8 ~
  Import the created class and use the useMethod created
  that are updating according to the state.
   */
    final number = useTimerHook(context);
    return Container(
      child: Text(
        number.toString(),
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
  /*
  ~ NOTE ~
  Hooks can only be called from within a Build method
  */