import 'package:auction/theme.dart';
import 'package:auction/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

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
                      headText('Sing in'),
                      SizedBox(
                        height: 20,
                      ),

                      ///name
                      SmallText(
                        'Name',
                        color: AppColors.gray,
                      ),
                      InputText(keyboardType: TextInputType.name),

                      ///number
                      SmallText(
                        'Phone number',
                        color: AppColors.gray,
                      ),
                      InputText(
                        keyboardType: TextInputType.number,
                        phone: true,
                      ),

                      ///email
                      SmallText(
                        'E-mail address',
                        color: AppColors.gray,
                      ),
                      InputText(keyboardType: TextInputType.emailAddress),

                      ///password
                      SmallText(
                        'Password',
                        color: AppColors.gray,
                      ),
                      InputText(keyboardType: TextInputType.text, password: true),

                      ///address
                      SmallText('Address', color: AppColors.gray,),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.gray),
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white),
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.only(bottom: 5, top: 5),
                          ),
                        ),
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
                child: mainButtons(label:'Sign in', onPress: (){})))
      ],
    );
  }
}
Text headText(String title) {
  return Text(
    title,
    style: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 24, color: AppColors.white),
  );
}
