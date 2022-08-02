import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child: ScreenTypeLayout(
          tablet: Image.asset('logo/logo.png', fit: BoxFit.contain),
          mobile: Image.asset('logo/logo_mobile.png', fit: BoxFit.contain)),
    );
  }
}
