import 'package:auction/screens/sign_in.dart';
import 'package:auction/screens/sign_up.dart';
import 'package:auction/theme.dart';
import 'package:auction/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: AppColors.blue1,
                    child: Text('R',style:TextStyle(fontSize: 90,color: AppColors.white)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen()));},
                      child: MediumText('Sign in',color: AppColors.lightBlue,)),
                  InkWell(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));},
                      child: MediumText('Sign up',color: AppColors.lightBlue,)),
                ],
              ),
              SizedBox(height: 20,),

              ///name
              SmallText(
                'Name',
                color: AppColors.gray,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray),
                    borderRadius: BorderRadius.circular(16)),
              ),

              ///number
              SmallText(
                'Phone number',
                color: AppColors.gray,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray),
                    borderRadius: BorderRadius.circular(16)),
              ),

              ///email
              SmallText(
                'Mail address',
                color: AppColors.gray,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray),
                    borderRadius: BorderRadius.circular(16)),
              ),
              ///address
              SmallText('Address', color: AppColors.gray,),
              Container(
                height: 70,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray),
                    borderRadius: BorderRadius.circular(16)),

              ),

            ],
          ),
        ),
      ),

    );
  }
}
