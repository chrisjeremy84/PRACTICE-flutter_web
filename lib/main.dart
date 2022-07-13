import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      // 7 - We use the multi provider to access the provider created
      // 8 - Must be called before the UI is rendered
      MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => NumberOfClicks(),
      )
    ],
    child: const MyApp(),
  ));
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

//STEPS TO USE PROVIDER - SET MANAGEMENT PACKAGE

//1 - Creating Provider
class NumberOfClicks extends ChangeNotifier {
//2 - Creating variable that is required throughout the app
  int num;
//3 - Initializing the variable
  NumberOfClicks({this.num = 0});
//4 - Add other functions that may change the provider

//5 - Use the getter to get the current value of the object
  int get count => num;
  void changeNumber(int newvalue) {
    num = num + newvalue;
//6 - We use the notify listener method
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //9 - You create a variable with the created provider variable
    int number = Provider.of<NumberOfClicks>(context).count;

    return StatefulBuilder(
        builder: (context, setState) => MaterialApp(
              title: "State management Test",
              home: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlueAccent),
                child: Center(
                  child: Column(
                    children: [
                      Text("Number: $number"),
                      SizedBox(height: 20.0),
                      MaterialButton(
                        onPressed: () {
                          Provider.of<NumberOfClicks>(context, listen: false)
                              .changeNumber(2);
                        },
                        color: Colors.blueAccent,
                        hoverColor: Colors.amberAccent,
                        child: Text("Increment",
                            style: TextStyle(
                                decoration: TextDecoration.none, fontSize: 18)),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
