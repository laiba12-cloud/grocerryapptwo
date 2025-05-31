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
        gradient: LinearGradient(colors: [AppColors.darkGreen,
        AppColors.lightGreen,],
        ),
          borderRadius:BorderRadius.circular(5)
      ),
      child:Center(
          child:Text(text,
            textAlign: TextAlign.center,))),
    );
  }
}
