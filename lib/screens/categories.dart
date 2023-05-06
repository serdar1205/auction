import 'package:auction/data/data.dart';
import 'package:auction/theme.dart';
import 'package:auction/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'one_category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

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
          title: Text('Categories'),
        ),
        backgroundColor: Colors.transparent,
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return  categoriesCard(
                  title: category[index],
                  onPress: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => OneCategoryScreen()));
              });
            })
      ),
    );
  }

  InkWell categoriesCard({required String title,required VoidCallback  onPress}) {
    return InkWell(
              onTap: onPress,
              child: Container(
                height: 75,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.only(bottom: 25,top: 25),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: AppColors.gray))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumText(title),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18,color: AppColors.gray,)
                  ],
                ),
              ),
            );
  }
}
