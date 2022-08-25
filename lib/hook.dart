import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/*
  ~ Step 1 ~
  - Import Flutter hooks
  - Create a Hook Widget... It is identical to a stateful widget... but without the constructor
  - In creating the Widget. Make sure to specify the return type and build the return of the data type 
   */

/*
  ~ Step 4 ~
  - use the initHook to initialize the timer
   */
int useTimerHook(BuildContext context) {
  return use(const TimerHook());
}

class TimerHook extends Hook<int> {
  const TimerHook();

  @override
  _TimerHookState createState() => _TimerHookState();
}

class _TimerHookState extends HookState<int, TimerHook> {
  late Timer _timer;
  //The variable beign returned
  int _number = 0;

  /*
  ~ Step 2 ~
  - use the initHook to initialize the timer
  - use the setState to update the required variable
   */

  @override
  void initHook() {
    // TODO: implement initHook
    super.initHook();
    _timer = Timer.periodic(Duration(seconds: 1), (time) {
      setState(() {
        _number = time.tick;
      });
    });
  }

/*
  ~ Step 3 ~
  - Build and return the integer that was created
  - dispose of the _timer
   */
  @override
  int build(BuildContext context) {
    return _number;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }
}
