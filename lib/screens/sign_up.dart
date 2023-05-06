import 'package:auction/theme.dart';
import 'package:auction/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Text('Back'),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headText('Sing up'),
                      SizedBox(
                        height: 20,
                      ),



                      ///email
                      SmallText(
                        'Mail address',
                        color: AppColors.gray,
                      ),
                      InputText(keyboardType: TextInputType.emailAddress),

                      ///password
                      SmallText(
                        'Password',
                        color: AppColors.gray,
                      ),
                      InputText(keyboardType: TextInputType.text, password: true),
                      ///confirm password
                      SmallText(
                        'Confirm the password',
                        color: AppColors.gray,
                      ),
                      InputText(keyboardType: TextInputType.text, password: true),


                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30,top: 10),
                            child: BigText('OR'),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumText('You already have an account?'),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen()));
                            },
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 10,
                                children: [
                              MediumText('Sign in',color: AppColors.lightBlue,),
                              Icon(Icons.arrow_forward_ios_outlined, color: AppColors.lightBlue,size: 16,)
                            ]),
                          )
                        ],
                      ),


                      SizedBox(
                        height: 30,
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
                child: mainButtons(label:'Sign up', onPress: (){})))
      ],
    );
  }


}
