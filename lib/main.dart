import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/layout_template/layout_template.dart';
import 'package:flutter_web/locator.dart';
import 'Screens/home_screen/homeScreen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Development',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'FiraSans')),
      home: LayoutTemplate(),
    );
  }
}
