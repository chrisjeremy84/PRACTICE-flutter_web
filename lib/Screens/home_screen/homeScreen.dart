import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/call_to_action/callToAction.dart';
import 'package:flutter_web/Widgets/centeredView/centeredView.dart';
import 'package:flutter_web/Widgets/course_details.dart/course_details.dart';
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
            child: Column(
          children: <Widget>[
            const NVB.NavigationBar(),
            Expanded(
                child: Row(
              children: const <Widget>[
                CourseDetails(),
                Expanded(
                    child: Center(
                  child: CallToAction(
                    title: 'Joing Course',
                  ),
                ))
              ],
            ))
          ],
        )));
  }
}
