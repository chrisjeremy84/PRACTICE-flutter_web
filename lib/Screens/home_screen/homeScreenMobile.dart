import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/call_to_action/callToAction.dart';
import 'package:flutter_web/Widgets/course_details.dart/course_details.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        CourseDetails(),
        SizedBox(height: 100),
        CallToAction("Join Course")
      ],
    );
  }
}
