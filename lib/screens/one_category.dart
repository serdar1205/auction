import 'package:auction/data/data.dart';
import 'package:auction/screens/one_category_product.dart';
import 'package:auction/theme.dart';
import 'package:auction/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OneCategoryScreen extends StatelessWidget {
  const OneCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Electronics'),
          ),
          backgroundColor: Colors.transparent,
          body: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: electronics.length,
              itemBuilder: (context, index) {
                return  InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OneCategoryProductScreen()));
                  },
                  child: Container(
                    height: 75,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.only(bottom: 25,top: 25),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: AppColors.gray))
                    ),
                    child: MediumText(electronics[index]),
                  ),
                );
              })
      ),
    );
  }
}
