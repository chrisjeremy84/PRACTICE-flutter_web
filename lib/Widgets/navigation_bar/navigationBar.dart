import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/navigation_bar/navigation_mobile.dart';
import 'package:flutter_web/Widgets/navigation_bar/navigation_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationMobile(),
      tablet: NavigationTabletDesktop(),
    );
  }
}
