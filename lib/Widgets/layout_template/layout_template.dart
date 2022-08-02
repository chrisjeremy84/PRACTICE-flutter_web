import 'package:flutter/material.dart';
import 'package:flutter_web/locator.dart';
import 'package:flutter_web/routes/route_names.dart';
import 'package:flutter_web/routes/router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Widgets/navigation_bar/navigationBar.dart' as NVB;
import '../../services/navigation_service.dart';
import '../Navigation_Drawer/NavigationDrawe.dart';
import '../centeredView/centeredView.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? NavigationDrawer()
              : null,
          backgroundColor: Colors.white,
          body: CenteredView(
              child: Column(children: <Widget>[
            const NVB.NavigationBar(),
            Expanded(
                child: Navigator(
              key: locator<NavigationService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: HomeRoute,
            ))
          ]))),
    );
    ;
  }
}
