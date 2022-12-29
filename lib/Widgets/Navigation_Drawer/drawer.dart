import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/navigation_bar/NavBarItem.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String NavigationPath;
  const DrawerItem(this.title, this.icon, this.NavigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(children: <Widget>[
        Icon(icon),
        SizedBox(width: 30),
        NavBarItem(
          title: title,
          navigationPath: NavigationPath,
        )
      ]),
    );
  }
}