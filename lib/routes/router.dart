import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web/Screens/ErrorScreen/error.dart';
import 'package:flutter_web/Screens/Login/login.dart';
import 'package:flutter_web/Screens/Pricing/pricing.dart';
import 'package:flutter_web/Screens/Product_Services/Product_Services.dart';
import 'package:flutter_web/Screens/home_screen/homeScreen.dart';
import './route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeScreen());
    case Product_ServicesRoute:
      return _getPageRoute((Product_Services()));
    case PricingRoute:
      return _getPageRoute(Pricing());
    case LoginRoute:
      return _getPageRoute(Login());
    default:
      return _getPageRoute(ErrorScreen());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
