import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
class BlackTextWidget extends StatelessWidget {
  final String text;
  final double size;
  const BlackTextWidget({super.key,required this.text, this.size=30});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize:size,
        color:AppColors.blackColor,
      )
    );
  }
}
