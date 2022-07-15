import 'package:flutter/material.dart';
import '../../Widgets/navigation_bar/navigationBar.dart' as NVB;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [NVB.NavigationBar()],
        ));
  }
}
