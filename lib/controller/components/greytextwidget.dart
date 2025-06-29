import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
class GreyTextWidget extends StatelessWidget {
  final String text;
  TextAlign textAlign;
  GreyTextWidget({super.key,required this.text,this.textAlign=TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,textAlign: textAlign,
      style:GoogleFonts.poppins(
        fontWeight:FontWeight.w500,
        fontSize:15,
        color:AppColors.greyColor,
      )
    );
  }
}
