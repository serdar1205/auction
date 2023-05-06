import 'package:auction/theme.dart';
import 'package:auction/widgets/my_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentPos = 0;

  String text = 'Xiaomi Redmi Note 8 is powered by the Qualcomm SDM665 '
      'Snapdragon 665 Octa-core (4×2.0 GHz Kryo 260 Gold + 4×1.8 GHz '
      'Kryo 260 Silver) processor. The smartphone comes with a 6.3 inches'
      ' IPS LCD and 1080 x 2340 pixels resolution.'
' The rear camera consists of a 48 MP (wide) + 8 MP (ultrawide) + 2 MP '
      '(dedicated macro camera) + 2 MP depth sensor lenses.'
'  The front camera has a 13 MP sensor. The phone’s sensors include'
      ' Fingerprint (rear-mounted), accelerometer, gyro, proximity, and compass.'

'  The smartphone is fueled by a Non-removable Li-Po 4000 mAh battery + Fast battery charging 18W.'
'  The phone runs on Android 9.0 (Pie) + MIUI 10.'
'  The Xiaomi Redmi Note 8 comes in different colors like Crystal Green and'
      ' Crystal Blue. It features 2.0, Type-C 1.0 reversible connector, USB On-The-Go.';


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
            appBar: AppBar(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                  child: Column(
                    children: [
                      carouuselSlider(),

                      ///title
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,
                              width: 4,
                              margin: EdgeInsets.only(right: 10),
                              color: AppColors.blue1,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: MediumText(
                                  'Xiaomi Redmi Note 8',
                                )),
                            Image.asset(
                              'assets/icons/heart.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.fill,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallText(
                            'Onset',
                            color: AppColors.gray,
                          ),
                          SmallText(
                            'Highest bid',
                            color: AppColors.gray,
                          ),
                          SmallText(
                            'Timing',
                            color: AppColors.gray,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$110',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white),
                          ),
                          Text(
                            '\$115',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: AppColors.lightBlue),
                          ),
                          Text(
                            '21:28:26',
                            style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 15),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: BigText('Description')),
                      ),
                      SmallText(
                          text),
                      SizedBox(
                        height: 70,
                      )
                    ],
                  )),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: mainButtons(
                    label: 'Place a bid',
                    onPress: () =>
                        alertDialog(title: 'Current bid', price: 12.15))))
      ],
    );
  }

  carouuselSlider() {
    return CarouselSlider.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/note8.jpg",
              width: 350,
              height: 350,
              fit: BoxFit.fill,
            ),
          );
        },
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              currentPos = index;
            });
          },
          height: 350,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }

  alertDialog({required String title, double? price}) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: AppColors.cardColor3,
        elevation: 8,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [MediumText(title), MediumText('\$' + price!.toString())],
        ),
        content: Container(
          margin: EdgeInsets.symmetric(horizontal: 60),

          ///width: 30,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.white),
              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            autofocus: false,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding: EdgeInsets.all(5),
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            child: TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: MediumText(
                'Enter \$15 or more',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
