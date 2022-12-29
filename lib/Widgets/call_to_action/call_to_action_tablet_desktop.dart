import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';

class CallToActionDesktop extends StatelessWidget {
  final String? title;
  const CallToActionDesktop(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title!,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: PrimaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}