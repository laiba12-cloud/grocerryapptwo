import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Stack(
         children:[
           Image.asset('assets/images/eggs2.png',fit: BoxFit.cover,),
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(height:50),
    BlackTextWidget(text: 'Buy Quality \n Dairy Products'),
    SizedBox(height:30),
    GreyTextWidget(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
    Spacer(),
    GreenTextButton(text: 'Get Started', onTap: (){}),
    SizedBox(height:30),
  ],
)

         ]
       )
      // Container(
      //   height:double.infinity,
      //   width:double.infinity,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(image: AssetImage(AppImages.cockroach),fit:BoxFit.cover
      //     ),
      //   ),

      //   )
      // )

    );
  }
}
