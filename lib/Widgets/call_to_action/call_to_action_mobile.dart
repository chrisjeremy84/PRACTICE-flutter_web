import 'package:flutter/material.dart';
import '../../utils/colors.dart';

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
          color: PrimaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
