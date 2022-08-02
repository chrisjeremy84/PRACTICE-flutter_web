import 'package:flutter/material.dart';
import '../../Widgets/product_services_cards/cards.dart';
import 'Product_Services_Desktop.dart';
import 'Product_Services_Mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Product_Services extends StatelessWidget {
  const Product_Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: const ProductServicesMobile(),
        desktop: const ProductServicesDesktop());
  }
}
