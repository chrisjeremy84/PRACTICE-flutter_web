import 'package:flutter/material.dart';

class InteractiveCards extends StatefulWidget {
  final String? image;
  final String? title;
  final String? description;
  const InteractiveCards(
      {Key? key,
      required this.image,
      required this.description,
      required this.title})
      : super(key: key);

  @override
  State<InteractiveCards> createState() => _InteractiveCardsState();
}

class _InteractiveCardsState extends State<InteractiveCards> {
  // Setting the height and width of the cards

  double height = 450.0;
  double width = 200.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      /*
        MouseRegion...
        This widget enables the adaptation of the mouse cursor.
        With this widget, we can change components on hover.
        We can as well change the cursor and depending on the content being hovered.
       */
      onEnter: (e) {
        setState(() {
          height = 500.0;
          width = 500.0;
        });
      },
      onExit: (e) {
        setState(() {
          height = 450.0;
          width = 200.0;
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(10),
        duration: const Duration(milliseconds: 500),
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(widget.image!))),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.black,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            AnimatedRotation(
              duration: const Duration(milliseconds: 375),
              turns: height == 450.0 ? -1 / 4 : 0,
              curve: Curves.easeOut,
              child: AnimatedPadding(
                padding:
                    EdgeInsets.symmetric(vertical: height == 450.0 ? 60.0 : 0),
                //Make sure AnimatedPadding == AnimatedRotation == Animated opacity in duration
                duration: const Duration(milliseconds: 375),
                curve: Curves.easeOut,
                child: Text(
                  widget.title!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 375),
              curve: Curves.easeOut,
              height: height == 450 ? 40.0 : 80.0,
              width: 420.0,
              color: Colors.transparent,
              padding: EdgeInsets.only(top: height == 450 ? 100.0 : 20.0),
              clipBehavior: Clip.antiAlias,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 375),
                opacity: height == 300.0 ? 0 : 1,
                child: OverflowBox(
                  minWidth: 300.0,
                  minHeight: 80.0,
                  maxHeight: 100.0,
                  maxWidth: 320.0,
                  child: Text(
                    widget.description!,
                    style: const TextStyle(color: Colors.white, fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
