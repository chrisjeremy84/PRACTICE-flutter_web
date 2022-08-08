import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/Navigation_Drawer/Navigation_Drawer_Header.dart';
import 'package:flutter_web/Widgets/Navigation_Drawer/drawer.dart';
import 'package:flutter_web/routes/route_names.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: const <Widget>[
          NavigationDrawerHeader(),
          DrawerItem("Home", Icons.house_rounded, HomeRoute),
          DrawerItem("Services", Icons.work_off_rounded, ServicesRoute),
          DrawerItem("Pricing", Icons.euro_rounded, PricingRoute),
          DrawerItem("Login", Icons.play_for_work_rounded, LoginRoute)
        ],
      ),
    );
  }
}
