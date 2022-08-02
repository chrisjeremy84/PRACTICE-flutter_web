import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    As the application uses the reponsive_builder plugin in our application. 
    The ScreenTypeLayout method/widget has been used to set out widget according to
    the screen size.


    In this scenario, we set out different independent variables such as,
    Fontsize, FontWeight. 
    Here we use the ResponsiveBuilder widget, which sets variable according to the 
    sizing of the screen.

     */
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Flutter Web \n The basics",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      fontSize: titleSize),
                  textAlign: textAlignment),
              SizedBox(height: 30),
              Text(
                  "This is a web template to be used for online course platform. Topics and many other courses can be found course lists.",
                  style: TextStyle(fontSize: descriptionSize, height: 1.7),
                  textAlign: textAlignment)
            ]),
      );
    });
  }
}
