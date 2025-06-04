import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
class OnBoardingWidget extends StatelessWidget {
  final String image;
  final String heading;
  final String description;
  const OnBoardingWidget({super.key,required this.image,required this.heading,required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SizedBox(height:100),
        Image(image: AssetImage(image),fit:BoxFit.cover),
        Spacer(),
        BlackTextWidget(text: heading,),
        SizedBox(height:20),
        GreyTextWidget(text: description),
        SizedBox(height:150)
      ]
    );
  }
}
