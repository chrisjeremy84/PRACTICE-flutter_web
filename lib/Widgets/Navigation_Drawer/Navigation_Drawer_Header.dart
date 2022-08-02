import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: PrimaryColor,
      alignment: Alignment.center,
      child: Column(mainAxisSize: MainAxisSize.min, children: const <Widget>[
        Text(
          "Skill Up Now!",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18),
        ),
        Text(
          "Tap Here",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18),
        ),
      ]),
    );
  }
}
