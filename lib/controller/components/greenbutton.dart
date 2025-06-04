import 'package:flutter/material.dart';

import '../utils/constant/appcolors/appcolors.dart';
class GreenButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const GreenButton({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height:40,
        width:double.infinity,
        margin:EdgeInsets.symmetric(horizontal:20),
      decoration:BoxDecoration(
        gradient: LinearGradient(colors: [AppColors.lightGreen,
        AppColors.darkGreen,],
        ),
          borderRadius:BorderRadius.circular(5)
      ),
      child:Row(
        children: [
          SizedBox(width:10),
          Icon(Icons.account_circle,color:Colors.white),
         SizedBox(width:50),
         Text(text,
                textAlign: TextAlign.center,
              style:TextStyle(color:Colors.white,)),

        ],
      )),
    );
  }
}
