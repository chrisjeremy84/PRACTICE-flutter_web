import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/home_screen/homeScreenDesktop.dart';
import 'package:flutter_web/Screens/home_screen/homeScreenMobile.dart';
import 'package:flutter_web/Widgets/centeredView/centeredView.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
        body: CenteredView(
            child: Column(children: <Widget>[
          const NVB.NavigationBar(),
          Expanded(
              child: ScreenTypeLayout(
                  mobile: const HomeScreenMobile(),
                  desktop: const HomeScreenDesktop()))
        ])));
  }
}
