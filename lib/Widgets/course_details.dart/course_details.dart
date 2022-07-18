import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Flutter Web \n The basics",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 0.9, fontSize: 80)),
            SizedBox(height: 30),
            Text(
                "This is a web template to be used for online course platform. Topics and many other courses can be found course lists.",
                style: TextStyle(fontSize: 21, height: 1.7))
          ]),
    );
  }
}
