import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
class BlackTextWidget extends StatelessWidget {
  final String text;
   TextAlign textAlign;
   BlackTextWidget({super.key,required this.text, this.textAlign=TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize:14,
        color:AppColors.blackColor,
      )
    );
  }
}
