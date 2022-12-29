import 'package:flutter/material.dart';
import 'package:flutter_web/Screens/login_screen/login.dart';
import 'package:flutter_web/routes/route_names.dart';

import 'NavBarItem.dart';
import 'navbarLogo.dart';

class NavigationTabletDesktop extends StatelessWidget {
  const NavigationTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(10), child: NavBarLogo()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            NavBarItem(
              title: "Home",
              navigationPath: HomeRoute,
            ),
            SizedBox(width: 40),
            NavBarItem(title: "Services", navigationPath: ServicesRoute),
            SizedBox(width: 40),
            NavBarItem(title: "Pricing", navigationPath: PricingRoute),
            SizedBox(width: 40),
            NavBarItem(title: "Login", navigationPath: LoginRoute),
            SizedBox(width: 40),
          ],
        )
      ],
    );
  }
}