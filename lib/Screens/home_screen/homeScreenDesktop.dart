import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/call_to_action/callToAction.dart';
import 'package:flutter_web/Widgets/course_details.dart/course_details.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        CourseDetails(),
        Expanded(
            child: Center(
          child: CallToAction('Join Course'),
        ))
      ],
    );
  }
}
