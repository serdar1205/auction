import 'package:auction/data/data.dart';
import 'package:auction/screens/product_detail.dart';
import 'package:auction/theme.dart';
import 'package:auction/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class OneCategoryProductScreen extends StatefulWidget {
  OneCategoryProductScreen({Key? key}) : super(key: key);

  @override
  State<OneCategoryProductScreen> createState() =>
      _OneCategoryProductScreenState();
}

enum Sort { high, low, popular }

class _OneCategoryProductScreenState extends State<OneCategoryProductScreen> {
  Sort? selected = Sort.high;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          AppColors.blue1,
          AppColors.blue2,
          AppColors.blue3,
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () => alertDialog2(),
              child: Row(
                children: [
                  SmallText('Sort'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: phones.length,
                    (BuildContext context, int index) {
                  return Container(
                    // color: Colors.white,
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 10, right: 10, top: 5),
                    //color: Colors.green,
                    child: oneCategoryProductCard(
                      image: phoneImages[index],
                        title: phones[index],
                        currentPrice: phonePrice[index],
                        highestPrice: phoneNewPrice[index],
                        onPress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDetailScreen()));
                        }),
                  );
                }),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250, //210 - 260
                  childAspectRatio: 0.65,
                )),
          ],
        ),
      ),
    );
  }

  alertDialog2() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: AppColors.cardColor3,
        elevation: 8,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<Sort>(
              title: MediumText('Price: High to low'),
              value: Sort.high,
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value;
                  Navigator.pop(context, 'Cancel');
                });
              },
            ),
            RadioListTile<Sort>(
              title: MediumText('Price: Low to high'),
              value: Sort.low,
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value;
                  Navigator.pop(context, 'Cancel');
                });
              },
            ),
            RadioListTile<Sort>(
              title: MediumText('Popular'),
              value: Sort.popular,
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value;
                  Navigator.pop(context, 'Cancel');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
