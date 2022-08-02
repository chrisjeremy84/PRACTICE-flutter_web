import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String? title;
  final String? bgIMG;
  final String? shortDescription;
  const Cards({Key? key, this.title, this.bgIMG, this.shortDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://images.pexels.com/photos/1476321/pexels-photo-1476321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                scale: 1)),
      ),
    );
  }
}
