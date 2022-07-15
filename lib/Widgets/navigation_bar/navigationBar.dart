import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
                height: 100,
                width: 200,
                child: Image.asset('logo.png', fit: BoxFit.contain))),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            _NavBarItem(title: "Home"),
            SizedBox(width: 60),
            _NavBarItem(title: "Products & Services"),
            SizedBox(width: 60),
            _NavBarItem(title: "Pricing"),
            SizedBox(width: 60),
            _NavBarItem(title: "Login"),
            SizedBox(width: 60),
          ],
        )
      ],
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700));
  }
}
