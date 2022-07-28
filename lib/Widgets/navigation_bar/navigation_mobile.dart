import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/navigation_bar/navbarLogo.dart';

class NavigationMobile extends StatelessWidget {
  const NavigationMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const NavBarLogo()
        ],
      ),
    );
  }
}
