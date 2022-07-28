import 'package:flutter/material.dart';

class CallToActionMobile extends StatelessWidget {
  final String? title;
  const CallToActionMobile(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(title!,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 229, 146),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
