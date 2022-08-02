import 'package:flutter/material.dart';
import '../../Widgets/product_services_cards/cards.dart';

class ProductServicesDesktop extends StatelessWidget {
  const ProductServicesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[Cards()],
      ),
    );
  }
}
