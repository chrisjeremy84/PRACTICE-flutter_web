import 'package:flutter/material.dart';
import 'package:flutter_web/locator.dart';
import 'package:flutter_web/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(
      {Key? key, required this.title, required this.navigationPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Never use a service directly in the UI to Change the State
        //Services should only be used from ViewModel
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
    );
  }
}
