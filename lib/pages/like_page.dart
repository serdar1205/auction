import 'package:auction/widgets/my_cards.dart';
import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return likeCard(
                  title: 'Iphone Solid Plated Heart Case 7 Plus / Black',
                  image: 'assets/images/7.jpg',
                  time: '21:28:26',
                  currentPrice:  14.25,
                  highestPrice:  14.25,
                  context: context);
            }));
  }
}
