import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/home_screen/homeScreenDesktop.dart';
import 'package:flutter_web/Screens/home_screen/homeScreenMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: const HomeScreenMobile(), desktop: const HomeScreenDesktop());
  }
}
