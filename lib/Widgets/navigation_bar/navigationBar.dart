import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/navigation_bar/navbarLogo.dart';

import 'NavBarItem.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(10), child: NavBarLogo()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            NavBarItem(title: "Home"),
            SizedBox(width: 60),
            NavBarItem(title: "Products & Services"),
            SizedBox(width: 60),
            NavBarItem(title: "Pricing"),
            SizedBox(width: 60),
            NavBarItem(title: "Login"),
            SizedBox(width: 60),
          ],
        )
      ],
    );
  }
}
