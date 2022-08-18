import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Widgets/interactive_card/interactive_cards.dart';
import '../../utils/product_services.dart';

/*

05-08-2022
----------
 Cards design and grid layout failed...
      Not rendering the way it's supposed to.
      Need a retry with different grid techniques...
      the main issue is the cards are not the actual size layed out on the map.  
 */
class Product_Services extends StatelessWidget {
  const Product_Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InteractiveCards(
          image: cards[0].image!,
          title: cards[0].title!,
          description: cards[0].description!,
        ),
        InteractiveCards(
          image: cards[1].image!,
          title: cards[1].title!,
          description: cards[1].description!,
        ),
        InteractiveCards(
          image: cards[2].image!,
          title: cards[2].title!,
          description: cards[2].description!,
        ),
        InteractiveCards(
          image: cards[3].image!,
          title: cards[3].title!,
          description: cards[3].description!,
        )
      ],
    );
  }
}
