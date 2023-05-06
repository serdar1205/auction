import 'package:auction/theme.dart';
import 'package:flutter/material.dart';
import 'my_widgets.dart';

categoryCard(
    {required String title,required String image, Color? color, required VoidCallback onPress}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/$image',
              height: 120,
              width: 177,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: BigText(title),
          )
        ],
      ),
    ),
  );
}

oneCategoryProductCard(
    {
      required image,
      required String title,
    Color? color,
    required double currentPrice,
    double? highestPrice,
    required VoidCallback onPress}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.cardColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/${image}',
              height: 170,
              width: 170,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SmallText(
                title,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallText(
                '\$${currentPrice}',
                color: AppColors.lightBlue,
              ),
              Container(
                height: 30,
                width: 2,
                color: AppColors.white,
              ),
              MediumText(
                '\$${highestPrice}',
                color: AppColors.lightBlue,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.alarm),
              TimeText('21:28:29'),
              Image.asset(
                'assets/icons/heart.png',
                height: 22,
                width: 22,
                fit: BoxFit.fill,
                color: AppColors.white,
              ),
            ],
          )
        ],
      ),
    ),
  );
}

likeCard(
    {required String title,
    required String image,
    required double currentPrice,
    double? highestPrice,
    required String time,
    required BuildContext context}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.gray))),
    height: 135,
    margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
    // padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ///image
        Container(
          height: 100,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),

        ///body
        Container(
          width: MediaQuery.of(context).size.width - 140,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// title
              Container(
                width: MediaQuery.of(context).size.width - 200,
                height: 55,
                padding: const EdgeInsets.only(right: 5, bottom: 5),
                child: Center(child: SmallText(title)),
              ),

              ///price
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SmallText(
                    '\$${currentPrice}',
                    color: AppColors.lightBlue,
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    color: AppColors.white,
                  ),
                  MediumText(
                    '\$${highestPrice}',
                    color: AppColors.lightBlue,
                  )
                ],
              ),

              /// time
              Row(
                children: [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 20,
                  ),
                  TimeText(time)
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

historyCard(
    {required String title,
    required String image,
    required double yourBid,
    double? latestBid,
    required String time,
    required BuildContext context}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.gray))),
    height: 145,
    margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
    padding: EdgeInsets.only(bottom: 10),
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ///image
        Container(
          height: 100,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),

        ///body
        Container(
          width: MediaQuery.of(context).size.width - 140,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// title
              Container(
                width: MediaQuery.of(context).size.width - 200,
                height: 55,
                padding: const EdgeInsets.only(right: 5, bottom: 5),
                child: Center(child: SmallText(title)),
              ),

              ///price
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      SmallText(
                        'Your bid:',
                        color: AppColors.lightBlue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SmallText(
                        '\$' + yourBid.toString(),
                        color: AppColors.lightBlue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SmallText(
                        'Latest bid:',
                        color: AppColors.lightBlue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '\$' + latestBid.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.lightBlue,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              /// time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.alarm),
                  TimeText(time),
                  InkWell(
                    onTap: () {
                      alertDialog(context: context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.remove_circle_outline,
                            color: AppColors.lightRed),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(
                          'Remove bid',
                          color: AppColors.lightRed,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

alertDialog({context}) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      backgroundColor: AppColors.cardColor3,
      elevation: 8,
      content: Container(
        height: 50,
        child: Center(child: MediumText('Do you want to remove it?')),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context, 'Cancel'),
              child: Container(
                margin: EdgeInsets.all(7),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                ///width: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: MediumText('Cancel'),
              ),
            ),
            InkWell(
              onTap: () => Navigator.pop(context, 'Cancel'),
              child: Container(
                margin: EdgeInsets.all(7),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                ///width: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: MediumText('Yes'),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

notificationCard(
    {required String title,
    required String image,
    required String time,
    required BuildContext context}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.gray))),
    height: 135,
    margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
    // padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ///image
        Container(
          height: 100,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),

        ///body
        Container(
          width: MediaQuery.of(context).size.width - 140,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// title
              Container(
                width: MediaQuery.of(context).size.width - 200,
                height: 80,
                padding: const EdgeInsets.only(right: 5, bottom: 10),
                child: SmallText(title),
              ),

              /// time
              Row(
                children: [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 20,
                  ),
                  TimeText(time)
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
