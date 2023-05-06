import 'package:auction/data/data.dart';
import 'package:auction/screens/one_category_product.dart';
import 'package:auction/theme.dart';
import 'package:auction/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

import '../screens/categories.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: mainHead('Upcoming', 'Auctions'),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  childCount: category.length,
                      (BuildContext context,int index){
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10,top: 5), //color: Colors.green,
                      child: categoryCard(title: category[index], image: images[index],
                          onPress: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoriesScreen()));
                      }),
                    );
                  }
              ),
              gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,//210 - 260
                childAspectRatio: 1,
              )),
        ],
      ),
    );
  }


  mainHead(String title1, String title2){
    return Container(
      height: 70,
      margin: EdgeInsets.only(left: 15,bottom: 40),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 4,
            margin: EdgeInsets.only(right: 10),
            color: AppColors.blue1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white
              ),),
              Text(title2,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white
              ),)
            ],
          )
        ],
      ),
    );
  }


}

