import 'package:auction/widgets/my_cards.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return notificationCard(
                  title: 'You have been outbid on package'
                      '229. The high bid is now \$32.'
                      ' Would you like to place a bid?',
                  image: 'assets/images/7.jpg',
                  time: '21:28:26',
                  context: context);
            }));
  }
}
