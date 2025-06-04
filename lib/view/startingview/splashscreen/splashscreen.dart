import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greenbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height:double.infinity,
          width:double.infinity,
          decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/images/splash.png'),
                fit:BoxFit.cover,
              )
          ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(height:30),
            BlackTextWidget(text:'Get Discounts \n On All Products'),
            SizedBox(height:20),
            GreyTextWidget(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
            Spacer(),
            GreenButton(text: 'Get Started', onTap: (){}),
            SizedBox(height:30),
          ]
        )
      ),
    );
  }
}
