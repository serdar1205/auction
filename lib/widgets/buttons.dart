import 'package:auction/theme.dart';
import 'package:flutter/material.dart';


Widget mainButtons({required String label, required var onPress}) {
  return Container(
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    child: ElevatedButton(
      onPressed: onPress,
      child: Text(
        label,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 1,
        padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
        ),
        textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),
        backgroundColor: AppColors.cardColor3,
        shadowColor: AppColors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
      ),
    ),
  );
}