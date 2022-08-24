import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/*
  ~ Step 6 ~
  We create the use method for our timer

  usually it is declared using the return type... which in this case is the integer

  It is also mostly declared at the top of the Hooks class
   */
int useInfiniteTimer(BuildContext context) {
  return use(const _infiniteTimer());
}

/*
  ~ Step 3 ~
  We Create a Hooks class
  This class will return an interger type variable
  For this we have to make sure we complete the return type
   */

class _infiniteTimer extends Hook<int> {
  /*
  ~ Step 7 ~
  We then add it's constant constructor in the infiniteTimer
   */
  const _infiniteTimer();

  @override
  __infiniteTimerState createState() => __infiniteTimerState();
}

class __infiniteTimerState extends HookState<int, _infiniteTimer> {
  late Timer _timer;
  int _number = 0;

/*
  ~ Step 4 ~
  In this case, We return our timer variable and we initialize the timer with the 
  initHook while using the setState to increment the number.
  It is very similar to the initState
   */
  @override
  void initHook() {
    super.initHook();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _number = _timer.tick;
      });
    });
  }

  @override
  int build(BuildContext context) {
    /*
  ~ Step 5 ~
  We dispose of the timer and finally return the updated number variable
   */
    return _number;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }
}
